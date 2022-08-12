#Datos de los dueños

insert into dueno
values (32541874, "Sara", "Olivera", "4281972", "Uriburu 612")

#Datos para perros
insert into perro
values (1, 'Lola', 2012-12-26, 'F', 12654789)

# Ejercicio 4: Actualice la fecha de nacimiento de algún animal (perro) que usted considere.

UPDATE perro 
SET Fecha_nac = 2020-12-2026
WHERE id = 1 
