import Data.List
import System.IO

-- 2019 January 

--scatterGather
-- scatterGather :: x -> [Int] -> x -> x   -- type signature
-- scatterGather u ind val   --definition
--     |null ind = []
--     |head ind < length vals = vals !! head ind : 

scatterGather :: b -> [Int] -> [b] -> [b]
scatterGather u ind vals
    | null ind = []
    | head ind < length vals = vals !! head ind : scatterGather u (drop 1 ind) vals
    | otherwise = [u] ++ scatterGather u (drop 1 ind) vals --concatenate the u value

--2019 August
afterThis :: Eq a => [a] -> [a] -> Maybe a
afterThis xs ys | xs == take (length xs) ys
                  && length ys > length xs
  = Just (ys !! length xs)

afterThis xs (y:ys) = afterThis xs ys
afterThis _ [] = Nothing

-- vals !! head ind (get vals at index head ind)
--scatterGather '_' [0,1,4,1,1,7,2] "abcde"

--2018 January 
-- Define a Haskell function tear, including its type, which takes a 
-- predicate and a list and returns a list of two lists, the first
-- those elements of the input list which pass the predicate, 
-- the second those that don't, in order.

-- filter if condition is met 
tear :: (a -> Bool) -> [a] -> [[a]]
tear p x = (filter p x) : (filter (not.p) x) : []
-- : colon means recurse over the function until there is nothing left

--2018 August
-- Define a Haskell function mapSkip which takes a
-- function and a list and returns the result of 
-- applying the given function to every other element 
-- of the given list, starting with the first element.
-- Be sure to include a type signature.
-- mapSkip (+1000) [1..6]

-- 1 : 1 : says to add 2 1s to the beginning of a list
mapSkip :: (Int -> Int) -> [Int] -> [Int]
mapSkip func lis
    | null lis = []
    | otherwise = func (head lis) : lis !! 1 : mapSkip func (drop 2 lis)

-- 2017 January
-- Define a Haskell function weaveHunks which takes 
-- an int and two lists and weaves them together in 
-- hunks of the given size. Be sure to declare its 
-- type signature.
-- weaveHunks 3 "abcdefghijklmno" "ABCDEFGHIJKLMNO"

weaveHunks :: Int -> [a] -> [a] -> [a]
weaveHunks x lis1 lis2
    |(null lis1) && (null lis2) = []
    |null lis2 = lis1
    |null lis1 = lis2
    |otherwise = take x lis1 ++ take x lis2 ++ weaveHunks x (drop x lis1) (drop x lis2)

--2016 January
revCount :: [a] -> [Int] -> [a]
revCount lis val
    |null val = []
    |otherwise = replicate (last val) (last lis) ++ revCount (init lis) (init val)

revCount2 :: [a] -> [Int] -> [a]
revCount2 xs ys
    |null ys = []
    | otherwise = replicate (last ys) (last xs) ++ revCount2 xs (take ((length ys)-1) ys)

