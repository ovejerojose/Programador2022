-- Primero creo la Base de Datos
CREATE DATABASE veterinariadesarrolladorcarlos;


-- llamo para que se coloque en la base de datos
use veterinariadesarrolladorcarlos;

-- Creamos la Tabla Dueño
CREATE TABLE Dueno
(
DNI int not null,
Nombre varchar(30) not null,
Apellido varchar(30) not null,
Telefono bigint(10),
Direccion varchar(40),
constraint pk_dni primary key (DNI)
);

-- Creamos la tabla Perro
CREATE TABLE Perro
(
ID_Perro int auto_increment,
Nombre varchar(30) not null,
Fecha_Nac date,
Sexo varchar(10),
DNI_Dueno int,
constraint pk_idp primary key (ID_Perro),
constraint fk_dni foreign key (DNI_Dueno) references Dueno (DNI)
);

-- Creamos la tabla historial para anotar los servicios/consultas
CREATE TABLE Historial
(
ID_Historial int auto_increment,
Fecha date,
Perro int,
Descripcion text(60),
Monto float,
constraint pk_idh primary key (ID_Historial),
constraint fk_idp foreign key (Perro) references Perro (ID_Perro)
);

-- Consultamos la Tabla Perro
describe Perro;

-- Insertamos un Dueño y un perro en las tablas correspondientes
insert into veterinariadesarrolladorcarlos.Dueno (DNI, Nombre, Apellido, Telefono, Direccion) values
('22333444', 'Juan', 'Perez', '35166655577', 'La Pampa 123');

insert into veterinariadesarrolladorcarlos.Perro (Id_Perro, Nombre, Fecha_Nac, Sexo, DNI_Dueno) Values 
('1', 'Puppe', '2018-06-07', 'Hembra', '22333444');

-- Actualizo la fecha de Nacimiento de un perro
update  Perro
set Fecha_Nac = '2017-06-07'
where ID_Perro = '1'; 

-- Perros que asistieron en el 2022
select Perro
from historial
where Fecha >= '2022-01-01';

-- Ingresos Percibidos en Julio 2022
Select sum(Monto)
from historial
where Fecha between '2022-06-01' and '2022-06-30';


