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

