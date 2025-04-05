import System.Win32 (xBUTTON1, cOLOR_ACTIVEBORDER)
import Text.XHtml (above)
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
