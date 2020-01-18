import Data.List
import System.IO

-- functions 
hypotenuse a b = sqrt (a^2 + b^2)

--if statement
identifyCamel humps
    |humps == 1 = "dromedary"
    |otherwise = "bactrian"

--data types - int , float, double, Bool

sumOfNums = sum[1..100] -- add nums from 1-100

--Lists
primeNumbers = [3,5,7,11]
morePrimes = primeNumbers ++ [13, 17,19, 23]-- concatenate lists

--List of lists
multLists = [[3,5,7],[11,13,17]]
morePrimes2 = 2 : morePrimes --add 2 to the front of more primes

-- get the length of the list
lenList = length morePrimes2
--reverse the list
revList = reverse morePrimes2
-- check if list is empty
nullList = null morePrimes2  --boolean
-- first value
firstVal = head morePrimes2
-- last value 
lastVal = last morePrimes2
-- tail
tailList = tail morePrimes2

--first 3 elements
first3elems = take 3 morePrimes2
-- check for val in list
is7inlist = 7 `elem` morePrimes2
-- get sum of vals in list
sumList = sum morePrimes2
-- get the second element from morePrimes2
secondPrime = morePrimes2 !! 1
-- drop elements - get rid of first 3 values
droppedList = drop 3 morePrimes2
-- zip
sumOfLists = zipWith (==) [1,2,3,4] [5,6,7,4]

test = + [1,2,3,4,5]

--filter 
--listTimes2 = [x | x <- lis, pred a] 

--creating lists
zeroToTen = [0..10]
evenList = [0,2..20]
letterList = ['A','B'..'Z']

factorialFunc :: Int -> Int 
factorialFunc 0 = 1
factorialFunc n = n * factorialFunc(n-1)
-- or we can use product 
--factorialFunc n = product[1..n]

fib = 1 : 1 : [a + b | (a, b) <- zip fib (tail fib)]
fib2000 = fib !! 2000