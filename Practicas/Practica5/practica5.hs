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

--Ejercicio 2 - 8)

estaContenida :: (Eq t) => [t] -> [t] -> Bool
estaContenida [] ys = True
estaContenida (x:xs) ys = pertenece x ys && estaContenida xs ys


mismosElementos :: (Eq t) => [t] -> [t] -> Bool
mismosElementos [] _  = False
mismosElementos _ [] = False
mismosElementos (xs) (ys) = estaContenida xs ys  && estaContenida ys xs

-- Ejercicio 2 - 9)

capicua :: (Eq t) => [t] -> Bool
capicua [] = True
capicua (xs) = xs == (reverso xs)

-- Ejercicio 3 - 1)

sumatoria :: [Integer] -> Integer
sumatoria [] = 0
sumatoria (x:xs) = x + sumatoria xs 

productoria :: [Integer] -> Integer
productoria [] = 1
productoria (x:xs) = x * productoria xs

maxEntre2 :: Integer -> Integer -> Integer
maxEntre2 x y | x > y = x
              | otherwise = y

maximo :: [Integer] -> Integer 
maximo [] = 0
maximo [x] = x
maximo (x:xs) = maxEntre2 x (maximo xs)

sumarN :: Integer -> [Integer] -> [Integer]
sumar n [] = []
sumarN n [x] = [x+n]
sumarN n (x:xs) = (x+n) : sumarN n xs

sumarElPrimero :: [Integer] -> [Integer]
sumarElPrimero [] = []
sumarElPrimero (x:xs) = sumarN x xs

sumarElUltimo :: [Integer] -> [Integer]
sumarElUltimo [] = []
sumarElUltimo xs = sumarN (ultimo xs) xs 

esPar :: Integer -> Bool
esPar n | mod n 2 == 0 = True
        | otherwise = False

pares :: [Integer] -> [Integer]
pares [] = []
pares (x:xs) | esPar x = x : pares xs
             | otherwise = pares xs


esMultiplo :: Integer -> Integer -> Bool
esMultiplo a b = mod b a == 0

multiplosDeN :: Integer -> [Integer] -> [Integer]
multiplosDeN m [] = []
multiplosDeN m (x:xs) | esMultiplo m x = x : multiplosDeN m xs
                      | otherwise = multiplosDeN m xs

ordenar :: [Integer] -> [Integer]
ordenar [] = []
ordenar [x] = [x]
ordenar (x:xs) = ordenar (xs) ++ [maximo(x:xs)]


--Ejercicio 4
-- 4.a
sacarBlancosRepetidos :: [Char] -> [Char]
sacarBlancosRepetidos [] = []
sacarBlancosRepetidos [t] = [t]
sacarBlancosRepetidos (x:y:xs) | (x == ' ') && (x == y)  = sacarBlancosRepetidos (y:xs)
                               | otherwise = x : sacarBlancosRepetidos (y:xs)
-- 4.b
contarPalabras :: [Char] -> Integer
contarPalabras [] = 0
contarPalabras [x] = 1
contarPalabras palabra = contarEspacios(corregirTexto palabra) + 1

contarEspacios :: [Char] -> Integer
contarEspacios [x] = 0
contarEspacios (x:xs) | x == ' ' = 1 + contarEspacios xs
                      | otherwise = contarEspacios xs

quitarPrimerEspacio :: [Char] -> [Char]
quitarPrimerEspacio (x:xs) | x == ' ' = xs
                           | otherwise = xs

quitarUltimoEspacio :: [Char] -> [Char]
quitarUltimoEspacio [] = []
quitarUltimoEspacio [x] | x == ' ' = []
                        | otherwise = [x]
quitarUltimoEspacio (x:xs) = x : quitarUltimoEspacio xs

corregirTexto :: [Char] -> [Char]
corregirTexto xs = quitarPrimerEspacio (quitarUltimoEspacio (sacarBlancosRepetidos xs ))

-- 4.c
palabras  :: [Char] ->[[Char]]
palabras [] = []
palabras texto = primeraPalabra texto : palabras (quitarPrimeraPalabra (corregirTexto(texto))) 

primeraPalabra :: [Char] -> [Char]
primeraPalabra [] = []
primeraPalabra (x:xs) | x == ' ' = []
                            | otherwise = x : primeraPalabra xs

quitarPrimeraPalabra :: [Char] -> [Char]
quitarPrimeraPalabra [] = []
quitarPrimeraPalabra (x:xs) | x == ' ' = xs
                            | otherwise = quitarPrimeraPalabra xs

-- 4.d

palabraMasLarga :: [Char] -> [Char]
palabraMasLarga [] = []
palabraMasLarga texto =  palabrasMasLargaEnListaDePalabras (palabras texto)


palabrasMasLargaEnListaDePalabras :: [[Char]] -> [Char]
palabrasMasLargaEnListaDePalabras [p1] = p1
palabrasMasLargaEnListaDePalabras (p1:p2:palabras) | longitud p1 > longitud p2 = palabrasMasLargaEnListaDePalabras (p1:palabras)
                                                   | longitud p2 > longitud p1 = palabrasMasLargaEnListaDePalabras (p2:palabras)

-- 4.e

aplanar :: [[Char]] -> [Char]
aplanar [] = []
aplanar (x:xs) = x ++ aplanar xs

-- 4.f

aplanarConBlancos :: [[Char]] -> [Char]
aplanarConBlancos [x] = x
aplanarConBlancos (x:xs) = x ++ " " ++ aplanarConBlancos xs


-- 4.g

aplanarConNBlancos :: [[Char]] -> Integer ->[Char]
aplanarConNBlancos [x] n = x
aplanarConNBlancos (x:xs) n = x ++ creaNEspacios n ++ aplanarConNBlancos xs n 

creaNEspacios :: Integer -> [Char]
creaNEspacios 0 = []
creaNEspacios n = " " ++ creaNEspacios(n-1)

-- Ejercicio 5.1

sumaAcumulada :: (Num t) => [t] -> [t]
sumaAcumulada [] = []
sumaAcumulada [x] = [x]
sumaAcumulada (x:y:xs) = x : sumaAcumulada ((x+y):xs)

--Ejercicio 5.2

descomponer :: Integer -> [Integer]
descomponer n = descomponerDesde n 2

descomponerDesde :: Integer -> Integer -> [Integer]
descomponerDesde 1 _ = []
descomponerDesde n d
                | mod n d == 0 = d : descomponerDesde (div n d) d
                | otherwise    = descomponerDesde n (d + 1)


descomponerEnPrimos :: [Integer] -> [[Integer]]
descomponerEnPrimos [] = []
descomponerEnPrimos (x:xs) = descomponer x : descomponerEnPrimos xs

-- Ejercicio 6

type Texto = [Char]
type Nombre = Texto
type Telefono = Texto
type Contacto = (Nombre, Telefono)
type ContactosTel = [Contacto]

-- 6.a

                --String -> [(String,String)] -> Bool

enLosContactos :: Nombre -> ContactosTel -> Bool
enLosContactos nombre [] = False
enLosContactos nombre (contacto:contactos) | fst contacto == nombre = True
                                           | otherwise = enLosContactos nombre contactos

-- 6.b

agregarContactos :: Contacto -> ContactosTel -> ContactosTel
agregarContactos _ [] = []
agregarContactos contactoNuevo (contactos)          | perteneceElContacto contactoNuevo contactos == False = contactoNuevo : contactos

agregarContactos contactoNuevo (contacto:contactos) | elNombre contactoNuevo == elNombre contacto = contactoNuevo : contactos 
                                                    | otherwise = contacto : agregarContactos contactoNuevo contactos


perteneceElContacto :: Contacto -> ContactosTel -> Bool
perteneceElContacto _ [] = False
perteneceElContacto contactoABuscar (contacto:contactos) | elNombre contactoABuscar == elNombre contacto = True
                                                         | otherwise = perteneceElContacto contactoABuscar contactos

elNombre :: Contacto -> [Char]
elNombre contacto = fst contacto

elTelefono :: Contacto -> [Char]
elTelefono contacto = snd contacto

-- 6.c

eliminarContacto :: Nombre -> ContactosTel -> ContactosTel
eliminarContacto _ [] = []
eliminarContacto nombreABuscar (contacto:contactos) | nombreABuscar == fst contacto = eliminarContacto nombreABuscar contactos 
                                                    | otherwise = contacto : eliminarContacto nombreABuscar contactos

--Ejercicio 7

type Identificacion = Integer
type Ubicacion = Texto
type Estado = (Disponibilidad, Ubicacion)
type Locker = (Identificacion, Estado)
type MapaDeLockers = [Locker]
type Disponibilidad = Bool


-- lockers =
-- [
-- (100,(False,"ZD39I")),
-- (101,(True,"JAH3I")),
-- (103,(True,"IQSA9")),
-- (105,(True,"QOTSA")),
-- (109,(False,"893JJ")),
-- (110,(False,"99292"))
-- ]

-- lockers =
-- [(100,(False,"ZD39I")) , (101,(True,"JAH3I")) , (103,(True,"IQSA9")) , (105,(True,"QOTSA")) , (109,(False,"893JJ")),  (110,(False,"99292")) ]

-- locker = (100,(False,"ZD39I"))


--Punto 1
--                 Integer      -> [(Integer , (Bool,String))] -> Bool
existeElLocker :: Identificacion -> MapaDeLockers -> Bool
existeElLocker _ [] = False
existeElLocker id (locker:lockers) | id == fst locker = True
                                   | otherwise = existeElLocker id lockers    

--Punto 2
--                   Integer         -> [(Integer , (Bool,String))]
ubicacionDelLocker :: Identificacion -> MapaDeLockers -> Ubicacion
ubicacionDelLocker _ [] = []
ubicacionDelLocker id (locker:lockers) | id == fst locker = snd (snd locker)
                                       | otherwise = ubicacionDelLocker id lockers 


--Punto 3
--                      Integer -> [(Integer , (Bool,String))] -> Bool
estaDisponibleElLocker :: Identificacion -> MapaDeLockers -> Bool
estaDisponibleElLocker id [] = False
estaDisponibleElLocker id (locker:lockers) | id == fst locker = fst (snd locker)
                                           | otherwise = estaDisponibleElLocker id lockers


--Punto 4
--              Integer      -> [(Integer , (Bool,String))] -> [(Integer , (Bool,String))]
ocuparLocker :: Identificacion -> MapaDeLockers -> MapaDeLockers 
ocuparLocker id (locker:lockers) | id == fst locker && fst (snd locker) == False = lockerActualizado : lockers
                                 | id == fst locker && fst (snd locker) == True = locker : lockers
                                 | otherwise = locker : ocuparLocker id lockers
                                  where lockerActualizado = (id , (True, snd (snd locker)))

