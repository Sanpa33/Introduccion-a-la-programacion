-- Ejercicio 1
fibonacci :: Integer -> Integer
fibonacci 0 = 0
fibonacci 1 = 1
fibonacci n = fibonacci(n-1) + fibonacci(n-2)

--Ejercicio 2

parteEntera:: Float -> Integer
parteEntera n | n>=0 && n<1 = 0
              | n > -1 && n<0 = -1
              | n >= 1 = 1 + parteEntera(n-1)
              | otherwise = (-1) + parteEntera(n+1)

--Ejercicio 3

esDivisible :: Integer -> Integer -> Bool
esDivisible a b
  | a == 0          = True
  | a < b           = False
  | otherwise       = esDivisible (a - b) b


--Ejercicio 4

sumaImpares :: Integer -> Integer
sumaImpares 0 = 0
sumaImpares n = (2 * n - 1) + sumaImpares (n - 1)


--Ejericio 5

medioFact :: Integer -> Integer 
medioFact 0 = 1
medioFact 1 = 1
medioFact n = n * medioFact(n-2) 

-- Ejercicio 6

sumaDigitos :: Integer -> Integer 
sumaDigitos n | n < 10 = n
              | n > 10 = mod n 10 + sumaDigitos(div n 10)

--Ejercicio 7 

ultimoDigito :: Integer -> Integer
ultimoDigito n = mod n 10

sacarUltimoDigito :: Integer -> Integer
sacarUltimoDigito n = div n 10

todosDigitosIguales :: Integer -> Bool
todosDigitosIguales n  | n < 10 = True
                       | n > 10 = ultimoDigito n == ultimoDigito(sacarUltimoDigito n) && todosDigitosIguales (sacarUltimoDigito n)


--Ejercicio 8

cantDigitos :: Integer -> Integer
cantDigitos n
              | n < 10    = 1              
              | otherwise = 1 + cantDigitos (n `div` 10)


iesimoDigito :: Integer -> Integer -> Integer
iesimoDigito n i = (n `div` (10 ^ (cantDigitos n - i))) `mod` 10

-- Ejercicio 9

esCapicua :: Integer -> Bool
esCapicua n | n < 10 = True
            | otherwise = ((primeraCifra n) == (ultimaCifra n)) && esCapicua(sacarPrimerayUltima n)

ultimaCifra :: Integer -> Integer
ultimaCifra n = mod n 10

primeraCifra :: Integer -> Integer 
primeraCifra n | n < 10 = n
               | otherwise = primeraCifra (div n 10)

contarCifras :: Integer -> Integer
contarCifras n | n < 10 = 1
               | otherwise = 1 + contarCifras (div n 10) 

sacarPrimerayUltima :: Integer -> Integer
sacarPrimerayUltima n = (n `mod` (10^(cantCifras-1))) `div` 10
  where
    cantCifras = contarCifras n


-- Ejercicio 10

