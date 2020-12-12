{-  
Estructuras discretas 2021-1
Práctica 2  Definiciones recursivas y estructura de datos "lista".
Profesor: Alejandro Hernández Mora alejandrohmora@ciencias.unam.mx 
Ayudantes: Pablo Camacho González pablopcg1@ciencias.unam.mx | Adrián Felipe Vélez Rivera adrianf_velez@ciencias.unam.mx
Ayudantes de laboratorio: Luis Manuel Martínez Damaso	LuisManuel@ciencias.unam.mx | Edith Araceli Reyes López edithareyesl@ciencias.unam.mx
Alumnos: Daniela Anaya Solis danielaanayas@ciencias.unam.mx |Mauricio Javier Salas Martinéz maw@ciencias.unam.mx | Joel Miguel Maya Castrejón mike.maya@ciencias.unam.mx
-}

module Practica2 where 

{-1. Máximo común Divisor. La función debe calcular el MCD de dos números enteros positivos.Puedes asumir
que la función siempre recibirá enteros positivos. -}
mcd :: Int -> Int -> Int
mcd a 0 = a
mcd a b = mcd b (a `mod` b)

{- 2. Mínimo común Múltiplo. La función debe calcular el MCM de dos números enteros positivos.Puedes
asumir que la función siempre recibirá enteros positivos. -}
mcm :: Int -> Int -> Int
mcm _ 0 =  0
mcm 0 _ =  0
mcm x y =  abs ((x `quot` (mcd x y)) * y)

{- 3. Longitud de una lista. Función recursiva que calcula la longitud de una lista. -}
longitud :: [a] -> Int
longitud [] = 0 --Caso Base
longitud (x:xs) = 1 + longitud xs --Caso recursivo

{- 4. Máximo de una lista. La función devuelve el máximo elemento de una lista de tipo numérico. -}
maximo :: Ord a => [a] -> a
maximo [x] = x
maximo (x:y:ys) = max x (maximo (y:ys))

{- 5. Reversa. La función calcula recursivamente la reversa de una lista. -}
reversa :: [a] -> [a] 
reversa [] = []
reversa (x:xs) = reversa xs ++ [x]

{- 6. Palíndromo. La función verifica si una lista es palíndromo. -}
palindromo :: Eq a => [a] -> Bool
palindromo xs = xs == reversa xs

{- 7. Divisores. La función devuelve una lista con todos los divisores positivos de un número entero positivo. Puedes asumir que la función siempre va a recibir enteros positivos. -}
divisores :: Int -> [Int]
divisores n = concat [[x,-x] | x <- [1..abs n], rem n x == 0]

{- 8. Diferencia Simétrica. La función debe calcular la diferencia simétrica entre dos listas. -}
--diferenciaSimetrica :: [a] -> [a] -> [a]

{- 9. Multiplicación de matrices. La función debe calcular la multiplicación de las matrices M y N de dimensión
nxm y mxk respectivamente. Para representar una matriz en Haskell usaremos un lista de listas. Puedes asumir
que siempre vas a recibir matrices válidas para la multiplicación. -}
--multMatriz ::Num a => [[a]] -> [[a]] -> [[a]]

{- 10. Conjunto potencias. La función debe calcular el conjunto potencia de una lista. -}
conjuntoPotencia :: [a] -> [[a]]
conjuntoPotencia [] = [[]]
conjuntoPotencia (x:xs) = [(x:ys) | ys <- conjuntoPotencia xs] ++ conjuntoPotencia xs