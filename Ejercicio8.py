# Ejercicio 8
# Crear una tupla en Python con el nombre de “Historial4” la cual contenga los siguientes valores:
#  7510, 7960, 76180, 800, 4100
# Que representa montos de atención en pesos por diferentes servicios/consultas de la mascota “Olivia”.
# Cree una función para determinar el valor mínimo de atención gastada en “Olivia”  mostrándolo en
# pantalla.



#Primero defino la Funcion
def Valor_Minimo():
    Minimo = Historial4[0]
    for atencion in Historial4:
        if atencion < Minimo:
            Minimo = atencion
    return Minimo


#Tupla Historial4
Historial4 = (7510, 7960, 76180, 800, 4100)

#Para ejecutar el programa pregunto si quiere saber el Valor minimo de atencion
#Como el ejercicio pide solo de la mascota Olivia, asumo que es solo de ella
Pregunta = input("Desea saber cual fue el servicio/consulta de menor valor de Olivia? (S/N): ")

#Como no pide nada mas el ejercicio no le doy otra opcion al Condicional
if Pregunta == "S":
    Atencion_Minima = Valor_Minimo()
    print("El Valor minimo fue: $",Atencion_Minima)

    
