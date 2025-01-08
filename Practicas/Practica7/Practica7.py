# Ejercicio 1

#Forma 1
def pertenece(s:list,num:int):

    for numero in s:
        if(numero == num):
            return True
    
    return False

#Forma 2
def pertenece2(s:list, num:int):

    for i in range(len(s)):
        if (num == s[i]):
            return True

    return False

#Forma 3
def pertenece3(s:list, num:int):

    i:int = 0

    while ( i < len(s)):
        if(num == s[i]):
            return True
        i+=1

    return False

def divide_a_todos(s:list, e:int) -> bool:

    for numero in s:
        if not((numero % e) == 0):
            return False
        
    return True

def suma_total(s:list) -> int:

    sumador:int = 0

    for i in range(len(s)):
        sumador += s[i]
    
    return sumador

