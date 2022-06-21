
# hipotesis de collatz

c0= int(input("ingrese el numero: "))
pasos = 0

while c0 != 1:
    if c0 % 2 == 0:
        c0 = c0/2
    else:
        c0 = 3 * c0 + 1
    pasos += 1
    print(int(c0))

print("los pasos: ", pasos)

Agrego la solucion del punto 3.2.1.14 de la pirámide:
    
blocks = int(input("Ingresa el número de bloques: "))
height = 0
i = 1
bloques_necesarios_para_este_piso = 1
bloques_usados = 0

while i <= blocks:
    #print("imprimo i : ",i)
    
    if i - bloques_usados == bloques_necesarios_para_este_piso:
        #print("bloques necesarios: ",bloques_necesarios_para_este_piso)
        bloques_usados += bloques_necesarios_para_este_piso
        bloques_necesarios_para_este_piso += 1
        height += 1
     #   print("para el proximo nivel necesito : ",bloques_necesarios_para_este_piso, "bloques")
     #   print("imprimo altura :",height)
    i += 1

print("La altura de la pirámide:", height)
