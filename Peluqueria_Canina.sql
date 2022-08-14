
-- Primero creo la Base de Datos
 CREATE DATABASE peluqueria_canina;

-- llamo para que se coloque en la base de datos
use peluqueria_canina;

-- Tabla Dueño
CREATE TABLE Dueno (
    DNI INT NOT NULL,
    Nombre VARCHAR(50) NOT NULL,
    Apellido VARCHAR(50) NOT NULL,
    Telefono BIGINT(10),
    Direccion VARCHAR(50),
    CONSTRAINT pk_dni PRIMARY KEY (DNI)
);

-- Tabla Perro
CREATE TABLE Perro (
    ID_Perro INT AUTO_INCREMENT,
    Nombre VARCHAR(50) NOT NULL,
    Fecha_Nac DATE,
    Sexo VARCHAR(30),
    DNI_Dueno INT,
    CONSTRAINT pk_idp PRIMARY KEY (ID_Perro),
    CONSTRAINT fk_dni FOREIGN KEY (DNI_Dueno)
        REFERENCES Dueno (DNI)
);

-- tabla historial
CREATE TABLE Historial
(
ID_Historial int auto_increment,
Fecha date,
Perro int,
Descripcion text(80),
Monto float,
constraint pk_idh primary key (ID_Historial),
constraint fk_idp foreign key (Perro) references Perro (ID_Perro)
);
-- Insertamos un Dueño y un perro en las tablas correspondientes
insert into peluqueria_canina.Dueno (DNI, Nombre, Apellido, Telefono, Direccion) values
('165554444', 'Ariel', 'Ortiz', '3544455445', 'calle sin nombre 123');

insert intopeluqueria_canina.Perro (Id_Perro, Nombre, Fecha_Nac, Sexo, DNI_Dueno) Values 
('1', 'Terry', '2019-05-05', 'Macho', '165554444');

-- Actualizo fecha de Nacimiento de un perro
update  Perro
set Fecha_Nac = '2020-05-05'
where ID_Perro = '1';

-- Ingresos Percibidos en Julio 2022
Select sum(Monto)
from historial
where Fecha between '2022-07-01' and '2022-07-31';

-- perros de sexo “Macho” nacidos entre 2020 y 20222
Select Sexo
from Perro
where Fecha between '2020-01-01' and '2022-12-31';

-- Perros que asistieron en el 2022
select Perro
from historial
where Fecha >= '2022-01-01'; 