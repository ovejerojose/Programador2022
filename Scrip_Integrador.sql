create database PeluqueriaCanina;

use PeluqueriaCanina;

#Tabla Dueno
CREATE TABLE IF NOT EXISTS Dueno (
	   DNI varchar(8) PRIMARY KEY,
	   Nombre VARCHAR(50),
	   Apellido VARCHAR(35),
	   Telefono VARCHAR(20),
	   Direccion VARCHAR(20)
       );
	   
#Tabla Perro
CREATE TABLE IF NOT EXISTS Perro (
	   ID_Perro varchar(8) PRIMARY KEY,
	   Nombre VARCHAR(50),
	   Fecha_nac datetime,
	   Sexo VARCHAR(20),
       DNI_dueno varchar(8),
	   foreign key (DNI_dueno) references Dueno(DNI)
       );

#Tabla Historial
CREATE TABLE IF NOT EXISTS Historial (
	   ID_Historial varchar(8),
       PRIMARY KEY(ID_Historial),
	   Fecha datetime,
       Perro varchar(8),
	   foreign key (Perro) references Perro(ID_Perro),
	   Descripcion VARCHAR(200),
       Monto decimal(10,2)
       );

#Datos para Dueños
INSERT INTO DUENO VALUES	
    #DNI ,  NOMBRE,  APELLIDO, TELEFONO ,     DIRECCION
('32281300','JOSE','OVEJERO','3516119287','QUENICO 8246')
;

INSERT INTO PERRO VALUES	
    #ID ,  NOMBRE,  FEC NAC,     SEXO,        DNI DUENO
('SHTZU#1','PILI','2020-08-06','FEMENINO','32281300');

SELECT * FROM dueno;



