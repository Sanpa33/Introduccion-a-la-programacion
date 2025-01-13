# Ejercicio 1

#Forma 1
def pertenece(s:list[int],num:int):

    for numero in s:
        if(numero == num):
            return True
    
    return False

#Forma 2
def pertenece2(s:list[int], num:int):

    for i in range(len(s)):
        if (num == s[i]):
            return True

    return False

#Forma 3
def pertenece3(s:list[int], num:int):

    i:int = 0

    while ( i < len(s)):
        if(num == s[i]):
            return True
        i+=1

    return False

def divide_a_todos(s:list[int], e:int) -> bool:

    for numero in s:
        if not((numero % e) == 0):
            return False
        
    return True

def suma_total(s:list[int]) -> int:

    sumador:int = 0

    for i in range(len(s)):
        sumador += s[i]
    
    return sumador

def maximo(s:list[int]) -> int:

    maximo:int = s[0]

    for num in s:
        if(num > maximo):
            maximo = num

    return maximo

def minimo(s:list[int]) -> int:

    minimo:int = s[0]

    for num in s:
        if(num < minimo):
            minimo = num

    return minimo

def ordenados(s:list[int]) -> bool:
  
    for i in range( len(s) -1 ):
         if (s[i] > s[i+1]):
             return False
    
    return True
    

def pos_maximo(s:list[int]) -> int:

    maximo = s[0]
    pos_maximo = 0

    if (len(s) == 0):
        return -1

    for i in range(len(s)):
        
        if(s[i] > maximo):
            maximo = s[i]
            pos_maximo = i

    return pos_maximo


def pos_minimo(s:list[int]) -> int:

    minimo = s[0]
    pos_minimo = 0

    if (len(s) == 0):
        return -1

    for i in range(len(s)):
        
        if(s[i] < minimo):
            minimo = s[i]
            pos_minimo = i

    return pos_minimo


def longitudMayorASiete(lista:list[str]) -> bool:

    for palabra in lista:
        if (len(palabra) > 7):
            return True

    return False


def palindromo (texto:str) -> bool:

    i:int = 0
    j:int = len(texto) - 1

    while i < j :
        if not(texto[i] == texto[j]):
            return False
        i+=1
        j-=1

    return True


def tresNumerosConsecutivos(lista:list[int]) -> bool:

    for i in range(len(lista)-2):
        if(lista[i] == lista[i+1] == lista[i+2]):
            return True

    return False

def quitarLetra(letra:str,string:str) -> str:

    nuevaCadena:str = ""

    for caracter in string:
        if not(letra == caracter):
            nuevaCadena+=caracter

    return nuevaCadena


def tresVocalesDistintas(palabra:str) -> bool:

    contador = 0

    while (len(palabra) > 0):

        if (palabra[0] == "a" or palabra[0] == "e" or palabra[0] == "i" or palabra[0] == "o" or palabra[0] == "u" ):
            contador +=1
            palabra = quitarLetra(palabra[0],palabra)
        else:
            palabra = quitarLetra(palabra[0],palabra)
        

    if (contador >= 3):
        return True

    return False


def subsecuencia_ordenada_mas_larga(seq:list[int]):

    longitud_max = 0          # Longitud de la subsecuencia más larga encontrada
    inicio_max = 0            # Índice de inicio de la subsecuencia más larga
    longitud_actual = 1       # Longitud de la subsecuencia actual
    inicio_actual = 0         # Índice de inicio de la subsecuencia actual

    for i in range(1, len(seq)):
        if (seq[i] >= seq[i - 1]):  # Si los números están en orden creciente o iguales
            longitud_actual += 1
        else:  # Si la secuencia pierde el orden
            # Actualizamos la subsecuencia más larga si es mayor que la actual
            if longitud_actual > longitud_max:
                longitud_max = longitud_actual
                inicio_max = inicio_actual
            # Reiniciamos los valores para una nueva subsecuencia
            longitud_actual = 1
            inicio_actual = i

    # Verificar al final si la última subsecuencia es la más larga
    if longitud_actual > longitud_max:
        inicio_max = inicio_actual

    return inicio_max


def digitos_impares(numero:int) -> int:

    num_string:str = str(numero)
    cant_numeros_impares:int = 0

    for unidad in num_string:
        unidad = int(unidad)
        if not((unidad % 2 ) == 0 ):
            cant_numeros_impares +=1
    
    return cant_numeros_impares


def cantidad_digitos_impares(s:list[int]) -> int:

    cant_numeros_impares:int = 0

    for i in range(len(s)):
        cant_numeros_impares += digitos_impares(s[i])

    return cant_numeros_impares





