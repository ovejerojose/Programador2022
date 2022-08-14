-- Ejercicio 1 y 2:
create database peluqueriacanina_GermanZamudio;
show databases;
use peluqueriacanina_GermanZamudio;
create table dueño (
	DNI int not null, Nombre varchar(30) not null,
    apellido varchar (30), Telefono int, Direccion varchar (30),
    primary key (DNI)
);
create table Perro (
	id_perro int not null, Nombre varchar(20) not null,
   fecha_nac varchar (30) not null, sexo varchar (15),
   DNI_dueño int not null,
    primary key (id_perro), 
    foreign key  (DNI_dueño) references dueño(DNI)
);
create table Historial (
	id_Historial int not null, fecha varchar(30) not null,
	perro int not null, Descripción varchar (30),
	Monto float not null,
	primary key (id_Historial), 
    foreign key  (perro) references Perro(id_perro)
);
-- Insertamos un campo nuevo
INSERT INTO dueño (DNI, Nombre, apellido, Telefono, Direccion)
values (43550243,"Carlos", "Gutierrez", 1122342393, "Guatemala 5434");
INSERT INTO Perro (id_perro, Nombre, fecha_nac,
 sexo, DNI_dueño)
values (9,"Cucho"," 9 septiembre 2020", "Hembra",43550243);
INSERT INTO Historial (id_Historial, fecha, perro, Descripción,
 Monto)
values (1,"20 julio 2022",9, "Blanco,chiquito ",2340);

-- Insertamos un campo nuevo
INSERT INTO dueño (DNI, Nombre, apellido, Telefono, Direccion)
values (42450585,"Julio", "Almaraz", 1155434235, "Libertador 227");
INSERT INTO Perro (id_perro, Nombre, fecha_nac,
 sexo, DNI_dueño)
values (10,"Santi"," 15 de agosto del 2019", "Macho",42450585);
INSERT INTO Historial (id_Historial, fecha, perro, Descripción,
 Monto)
values (2,"10 de enero del 2021",10, "Grande, moreno",2420);

-- Insertamos un campo nuevo
INSERT INTO dueño (DNI, Nombre, apellido, Telefono, Direccion)
values (44324532,"Pedro", "Dominguez", 1155479535, "Juan B. Justo 227");
INSERT INTO Perro (id_perro, Nombre, fecha_nac,
 sexo, DNI_dueño)
values (11,"Perri"," 15 de Enero del 2020", "Macho",44324532);
INSERT INTO Historial (id_Historial, fecha, perro, Descripción,
 Monto)
values (4,"15 de diciembre del 2020",11, "chiguagua, marron",3040);


-- Ejercicio 8: Insertar un nuevo registro en la tabla historial
-- de un perro cuyo ID perro es igual a 10
INSERT INTO Historial (id_Historial, fecha, perro, Descripción,
 Monto)
values (3,"13 de agosto del 2022",10, "Grande, moreno ",4320);

select * from Historial;

-- Ejercicio 9: Escriba una consulta que permita actualizar la direccion
-- de un dueño. Su nueva direccion es Libertad 123

UPDATE dueño SET direccion='Libertad 123' where DNI=42450585;
select * from dueño;

