-- Ejericicio 1 - 1)

longitud :: [t] -> Integer
longitud [] = 0
longitud [x] = 1
longitud (x:xs) = 1 + longitud xs

-- Ejercicio 1 - 2)

ultimo :: [t] -> t
ultimo [x] = x
ultimo (_:xs) = ultimo xs

-- Ejercicio 1 - 3)

principio :: [t] -> t
principio [x] = x
principio (x:xs) = x

-- Ejercicio 1 - 4)

reverso :: [t] -> [t] 
reverso [x] = [x]
reverso (x:xs) = reverso xs ++ [x] 

--Ejercicio 2 - 1)

pertenece :: (Eq t) => t -> [t] -> Bool
pertenece n [] = False
pertenece n (x:xs) = n == x || pertenece n xs

--Ejercicio 2  - 2)

todosIguales :: (Eq t) => [t] -> Bool
todosIguales [] = True
todosIguales [_] = True
todosIguales (x:y:xs) = x == y && todosIguales (y:xs)

-- Ejercicio 2 - 3)

todosDistintos :: (Eq t) => [t] -> Bool
todosDistintos [] = True
todosDistintos [_] = True
todosDistintos (x:y:xs) = (not(pertenece x (y:xs))) && todosDistintos(y:xs)

-- Ejercicio 2 - 4)

hayRepetidos :: (Eq t) => [t] -> Bool
hayRepetidos [] = False
hayRepetidos [_] = False
hayRepetidos (x:y:xs) = pertenece x (y:xs) ||  hayRepetidos (y:xs)

--Ejercicio 2 -5)

quitar :: (Eq t) => t -> [t] -> [t]
quitar n [] = []
quitar n (x:xs) | n == x = xs
                | otherwise = x : quitar n xs

--Ejercicio 2 -6)

quitarTodos :: (Eq t) => t -> [t] -> [t]
quitarTodos n [] = []
quitarTodos n (x:xs) | n == x = quitarTodos n xs
                     | otherwise = x : quitarTodos n xs

-- Ejercicio 2 -7)

eliminarRepetidos :: (Eq t) => [t] -> [t]
eliminarRepetidos [] = []
eliminarRepetidos (x:xs) = x : eliminarRepetidos (quitarTodos x xs)

