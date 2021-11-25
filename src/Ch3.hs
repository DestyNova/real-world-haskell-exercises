module Ch3 where

import Data.List (sortOn)

data List a = Cons a (List a)
            | Nil
              deriving (Show)

fromList :: List a -> [a]
fromList Nil = []
fromList (Cons x xs) = x : fromList xs

data Tree a = Node a (Tree a) (Tree a) | Empty
data UglyTree a = UglyNode a (Maybe a) (Maybe a)

countElems :: [a] -> Int
countElems [] = 0
countElems (_:xs) = 1 + countElems xs

calcMean :: [Int] -> Double
calcMean xs = fromIntegral (sum xs) / fromIntegral (length xs)

palindromify :: [a] -> [a]
palindromify xs = xs ++ reverse xs

isPalindrome :: (Eq a) => [a] -> Bool
isPalindrome xs = xs == reverse xs

sortByLength :: [[a]] -> [[a]]
sortByLength = sortOn length

intersperse :: a -> [[a]] -> [a]
intersperse _ [] = []
intersperse c (x:y:xs) = x ++ [c] ++ intersperse c (y:xs)
intersperse c [x] = x

height :: Tree a -> Int
height Empty = 0
height (Node _ l r) = 1 + max (height l) (height r)

-- part 2 ex 9
data Direction = DirLeft | DirRight | DirStraight deriving (Show, Eq)

calcDirection :: (Ord a, Num a) => (a,a) -> (a,a) -> (a,a) -> Direction
calcDirection (ax,ay) (bx,by) (cx,cy) | p == 0 = DirStraight
                                      | p > 0 = DirLeft
                                      | p < 0 = DirRight
    where p = (bx - ax)*(cy - ay) - (cx - ax)*(by - ay)

calcDirs :: (Ord a, Num a) => [(a, a)] -> [Direction]
calcDirs (a:b:c:xs) = calcDirection a b c : calcDirs (b:c:xs)
calcDirs _ = []

-- tmp

nth :: Int -> Maybe Integer
nth 0 = Nothing
nth n = pure $ primes !! (n - 1)

primes :: [Integer]
primes = [x | x <- 2:[3,5..], isPrime x]

isPrime :: Integral a => a -> Bool
isPrime x = not $ or [x `mod` n == 0 | n <- [2..(floor $ sqrt $ fromIntegral x)]]
