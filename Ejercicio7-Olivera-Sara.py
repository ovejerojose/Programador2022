# Ejercicio numero 7 - https://github.com/SaraEOlivera

# Crear una tupla en Python con el nombre de “Historial3” la cual contenga los siguientes valores:
#  9530, 4120, 4580, 1500, 890,7516,426 que representa montos de atención en pesos por diferentes
#servicios/consultas de la mascota “Lennon”.

#Calcular el promedio de gasto en pesos por atención de “Lennon” mostrándolo en pantalla.

#Si el promedio es mayor a 4500 indicar con un mensaje “Se ha excedido del gasto promedio para su mascota”.

Historial3 = (9530, 4120, 4580, 1500, 890,7516,426)

sumaHistorial = 0
for i in Historial3:
    sumaHistorial += i

#print(sumaHistorial)

cantidadGastos = len(Historial3)

promedio = sumaHistorial / cantidadGastos
print("El promedio de gasto en pesos de Lennon es de: ",promedio)

if promedio > 4500:
    print("Se ha excedido del gasto promedio para su mascota")


    
    






