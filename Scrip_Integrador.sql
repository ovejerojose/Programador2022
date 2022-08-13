/*
Scrip SQL valoracion final del modulo
Ovejero Jose 
Año 2022
*/

#Creacion de la Base de Datos
create database PeluqueriaCanina;

#Uso de la base
use PeluqueriaCanina;

#Tabla Dueno
CREATE TABLE IF NOT EXISTS Dueno (
	   DNI varchar(8) PRIMARY KEY,
	   Nombre VARCHAR(50) not null,
	   Apellido VARCHAR(35) not null,
	   Telefono VARCHAR(20),
	   Direccion VARCHAR(60)
       );
       
describe Dueno;
	   
#Tabla Perro
CREATE TABLE IF NOT EXISTS Perro (
	   ID_Perro int PRIMARY KEY AUTO_INCREMENT,
	   Nombre VARCHAR(50),
	   Fecha_nac datetime,
	   Sexo VARCHAR(20),
       DNI_dueno varchar(8),
	   foreign key (DNI_dueno) references Dueno(DNI)
       );

#Tabla Historial
CREATE TABLE IF NOT EXISTS Historial (
	   ID_Historial int PRIMARY KEY AUTO_INCREMENT,
       Fecha datetime,
       Perro int,
	   foreign key (Perro) references Perro(ID_Perro),
	   Descripcion VARCHAR(300),
       Monto decimal(10,2)
       );

#Datos para Dueños
INSERT INTO DUENO VALUES	
    #DNI ,  NOMBRE,  APELLIDO, TELEFONO ,     DIRECCION
('32281300','JOSE','OVEJERO','3516119287','QUENICO 8246')
;

#Datos para Perro
INSERT INTO PERRO VALUES	
    #ID ,  NOMBRE,  FEC NAC,     SEXO,        DNI DUENO
(null,'PILI','2020-08-06','FEMENINO','32281300');

SELECT * FROM dueno;
SELECT * FROM perro;

/*
Punto 4
Actualice la fecha de nacimiento de algún animal (perro) 
que usted considere.*/

UPDATE PERRO
set nombre = 'BONNY'
where nombre = 'PILI';

/*
Punto 8
Insertar un nuevo registro en la tabla historial 
de un perro cuyo ID Perro es igual a 10.
*/

INSERT INTO historial values
	#   (ID_Historial , Fecha, Perro ,Descripcion, Monto )
(null, '2022-08-10',10,'Vacuna', 320.02);
