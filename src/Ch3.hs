module Ch3 where

data List a = Cons a (List a)
            | Nil
              deriving (Show)

fromList :: List a -> [a]
fromList Nil = []
fromList (Cons x xs) = x : fromList xs

data UglyTree a = Node a (Maybe a) (Maybe a)

countElems :: [a] -> Int
countElems [] = 0
countElems (_:xs) = 1 + countElems xs

calcMean :: [Int] -> Double
calcMean xs = fromIntegral (sum xs) / fromIntegral (length xs)

palindromify :: [a] -> [a]
palindromify xs = xs ++ reverse xs
