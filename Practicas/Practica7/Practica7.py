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

