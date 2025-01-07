import math

##Ejercicio 1

def imprimir_hola_mundo():
    return "Hola mundo!"

def imprimir_un_verso():
    return print("En este film velado en blanca noche\nEl hijo tenaz de tu enemigo\nEl muy verdugo cena distinguido\nUna noche de cristal que se hace añicos")

def raizDe2():
    return round(math.sqrt(2),2)

def factorial_de_dos():
    return 2 * 1

def perimetro():
    return 2 * math.pi

######################################################################################################

#Ejercicio 2

def imprimir_saludo(nombre:str) -> str:
    return (f"Hola {nombre}")

def raiz_cuadrada_de(numero:int) -> float:
    return math.sqrt(numero)

def fahrenheit_a_celsius(temp_far:float) -> float:
    return ((temp_far - 32) *5) / 9

def imprimir_dos_veces(estribillo:str) -> str:
    return (estribillo + " ") * 2

def es_multiplo(n:int,m:int) -> bool:
    return (n % m) == 0

######################################################################################################

#Ejercicio 3

def alguno_es_0(numero1:int , numero2:int) -> bool:
    
    if(numero1 == 0 or numero2 == 0):
        return True
    return False

def ambos_son_0(numero1:int, numero2:int) -> bool:
    
    if(numero1 == 0 and numero2==0):
        return True
    return False

def es_nombre_largo(nombre:str) -> bool:

    if(3 <= len(nombre) <= 8):
        return True
    return False


def es_bisiesto(anio:int) -> bool:

    if(anio % 400 == 0):
        return True
    
    if (anio % 4 == 0 and not(anio % 100 == 0)):
        return True
    
    return False

######################################################################################################

#Ejercicio 4


######################################################################################################

#Ejercicio 5

def devolver_el_doble_si_es_par(num:int) -> int:

    if ((num % 2) == 0):
        return num * 2
    

def devolver_valor_si_es_par_el_que_sigue(num:int) -> int:

    if ((num % 2) == 0):
        return num
    
    return num + 1


def devolver_el_doble_si_es_multiplo3_el_triple_si_es_multiplo9(num:int)->int:

    if ((num % 3) == 0):
        return num * 2
    
    if ((num % 9) == 0):
        return num * 3
    
    return num

