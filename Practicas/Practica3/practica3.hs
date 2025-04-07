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