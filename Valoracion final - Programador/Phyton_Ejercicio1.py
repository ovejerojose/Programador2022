#           Ejercicio 1 - Carrera: Tec. Desarrollo Web - Alumno: German Benjamin Zamudio - DNI:42320235 

# 1) Crear una lista en Python denominada “Dueno” que contenga los siguientes valores:
#     28957346,  Juan,  Perez, 4789689,  Belgrano 101
#  Dichos datos se corresponden  con los datos del dueño de un perro (DNI, nombre, apellido, teléfono y dirección).
#  Muestre en pantalla el teléfono del dueño si el DNI es mayor a 26000000.

Dueño=[2895573446, "Juan", "Perez", 4789689, "Belgrano 101"]

if Dueño[0] > 26000000:
    print("El telefono de",Dueño[1],Dueño[2],"es el siguiente: ",Dueño[3])