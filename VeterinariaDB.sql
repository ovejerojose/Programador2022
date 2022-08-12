CREATE DATABASE Veterinaria;

USE Veterinaria;

CREATE TABLE Dueno
(
DNI INT NOT NULL,
Nombre VARCHAR (50) NOT NULL,
Apellido VARCHAR (50) NOT NULL,
Telefono VARCHAR (40) NOT NULL,
Direccion VARCHAR (80),
PRIMARY KEY (DNI)
);

CREATE TABLE Perros
(
ID_Perro INT NOT NULL AUTO_INCREMENT,
Nombre VARCHAR (50) NOT NULL,
Fecha_Nac DATETIME,
Sexo VARCHAR (20) NOT NULL,
DNI_Dueno INT NOT NULL,
PRIMARY KEY (ID_Perro),
FOREIGN KEY (DNI_Dueno) REFERENCES Dueno (DNI) 
);

CREATE TABLE Historial
(
ID_Historial VARCHAR (300) NOT NULL,
Fecha DATETIME,
Perro INT NOT NULL,
Descripcion VARCHAR (50) NOT NULL,
Monto FLOAT (50) NOT NULL,
PRIMARY KEY (ID_Historial),
FOREIGN KEY (Perro) REFERENCES Perros (ID_Perro)
);

SHOW TABLES;

INSERT INTO Dueno (DNI, Nombre, Apellido, Telefono, Direccion)
VALUES (25920481, "José", "Oviedo", "3513374719", "Isla verde 2152");

INSERT INTO Dueno (DNI, Nombre, Apellido, Telefono, Direccion)
VALUES (27171966, "Paola", "Valor", "3513374727", "Isla verde 2152");

INSERT INTO Dueno (DNI, Nombre, Apellido, Telefono, Direccion)
VALUES (49586630, "Fatima", "Oviedo", "3513518668", "Isla verde 2152");

INSERT INTO Dueno (DNI, Nombre, Apellido, Telefono, Direccion)
VALUES (46310542, "Ignacio", "Oviedo", "3512836578", "Isla verde 2152");

DESCRIBE dueno;

SELECT * FROM dueno;


INSERT INTO Perros (Nombre, Fecha_Nac, Sexo, DNI_Dueno)
VALUES ("Hanna", '16/09/01', "Hembra", 25920481);

INSERT INTO Perros (Nombre, Fecha_Nac, Sexo, DNI_Dueno)
VALUES ("Yago", '18/01/10', "Macho", 27171966);

INSERT INTO Perros (Nombre, Fecha_Nac, Sexo, DNI_Dueno)
VALUES ("Cloyd", '22/02/15', "Hembra", 49586630);

INSERT INTO Perros (Nombre, Fecha_Nac, Sexo, DNI_Dueno)
VALUES ("Ringo", '20/08/12', "Macho", 46310542);

DESCRIBE Perros;

SELECT * FROM Perros;

UPDATE Perros SET Fecha_Nac = '18/11/18' WHERE ID_Perro = 1;


SELECT * FROM Perros;

SELECT * FROM Perros WHERE ID_Perro = 1;

