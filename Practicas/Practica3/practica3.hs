--Ejercicio 1
f :: Integer -> Integer
f 1 = 8
f 4 = 131
f 16 = 16

--B)

g :: Integer -> Integer
g 8 = 16
g 16 = 4
g 131 = 16


--C)

h :: Integer -> Integer
h x = f (g x)

k :: Integer -> Integer
k x = g (f x)

--2)

--A)

absoluto :: Integer -> Integer
absoluto x
            | x < 0 = -x
            | otherwise = x

--B)    

maximoAbsoluto :: Integer -> Integer -> Integer
maximoAbsoluto x y
            | absoluto x > absoluto y = absoluto x
            | otherwise = absoluto y

--C)

maximo3 :: Integer -> Integer -> Integer -> Integer
maximo3 a b c 
            | (a >= b) && (a >= c) = a 
            | (b >= a) && (b >= c) = b 
            | (c >= a) && (c >= b) = c

--D)

algunoEsCero :: Float -> Float -> Bool
algunoEsCero x y = (x==0) || (y==0) 

-- Con Pattern Matching

algunoEsCero2 :: Float -> Float -> Bool
algunoEsCero2 0 _ = True
algunoEsCero2 _ 0 = True
algunoEsCero2 _ _ = False

--E)

ambasSonCero :: Float -> Float -> Bool
ambasSonCero x y = (x==y) && (x==y)

-- Con Pattern Matching

ambosSonCero2 :: Float -> Float -> Bool
ambosSonCero2 0 0 = True
ambosSonCero2 0 _ = False
ambosSonCero2 _ 0 = False

--F)

esMismoIntervalo :: Float -> Float -> Bool
esMismoIntervalo a b 
                    | a <= 3 && b <= 3 = True
                    | (a > 3 && a <= 7) && (b > 3 && b <= 7) = True  
                    | a > 7 && b > 7 = True
                    | otherwise = False

--G)

sumaDistintos :: Integer -> Integer -> Integer -> Integer
sumaDistintos a b c
                    | a == b && b == c = 0
                    | a == b = c
                    | a == c = b
                    | b == c = a
                    | otherwise = a + b + c

--H)

esMultiploDe :: Integer -> Integer -> Bool
esMultiploDe a b = mod a b == 0 

--I)

digitoUnidades :: Integer -> Integer
digitoUnidades a = a `mod` 10

--J)

digitoDecenas :: Integer -> Integer
digitoDecenas a = div (mod a 100) 10

-- Ejercicio 3

estanRelacionados :: Integer -> Integer -> Bool
estanRelacionados a b | esMultiploDe a b = True -- <=> esInteger(k=-a/b) 
                      | otherwise = False


-- Ejercicio 4

productoInterno :: (Float, Float) -> (Float, Float) -> Float
productoInterno (x1, y1) (x2, y2) = x1 * x2 + y1 * y2

esParMenor :: (Float, Float) -> (Float, Float) -> Bool
esParMenor (x1, y1) (x2, y2) = (x1 < x2) && (y1 < y2)

distancia :: (Float, Float) -> (Float, Float) -> Float
distancia (x1, y1) (x2, y2) = sqrt ((x2 - x1)^2 + (y2 - y1)^2)

sumaTerna :: (Float,Float,Float) -> Float
sumaTerna (a,b,c) = a+b+c

sumarSoloMultiplos :: (Integer,Integer,Integer) -> Integer -> Integer
sumarSoloMultiplos (a,b,c) n 
                            | (esMultiploDe a n) && (esMultiploDe b n) && (esMultiploDe c n) = a + b + c        -- todos multiplos
                            | (esMultiploDe a n) && (esMultiploDe b n) && (not(esMultiploDe c n)) = a + b       -- a y b multiplos
                            | (not(esMultiploDe a n)) && (esMultiploDe b n) && (esMultiploDe c n) = b + c       -- b y c multiplos
                            | (esMultiploDe a n) && (not(esMultiploDe b n)) && (esMultiploDe c n) = a + c       -- a y c multiplos
                            | (esMultiploDe a n) && (not(esMultiploDe b n)) && (not(esMultiploDe c n)) = a      -- a multiplo 
                            | (not(esMultiploDe a n)) && (esMultiploDe b n) && (not(esMultiploDe c n)) = b      -- b multiplo
                            | (not(esMultiploDe a n)) && (not(esMultiploDe b n)) && (esMultiploDe c n) = c      -- c multiplo

posPrimerPar :: (Integer,Integer,Integer) -> Integer
posPrimerPar (a,b,c) | (mod a 2 == 0) = 1
                     | (mod b 2 == 0) = 2
                     | (mod c 2 == 0) = 3
                     | otherwise = 4

crearPar :: a -> b -> (a,b)
crearPar a b = (a,b)

invertir :: (a,b) -> (b,a)
invertir (a,b) = (b,a)

