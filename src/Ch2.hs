module Ch2 (lastButOne, Customer) where

-- lastButOne :: [a] -> Maybe a ... would be nicer
lastButOne :: [a] -> a
lastButOne [] = error "Ran out of list elements."
lastButOne [x,_] = x
lastButOne (x:xs) = lastButOne xs

type CustomerID = String
type Address = [String]

data Customer = Customer {
      customerID      :: CustomerID
    , customerName    :: String
    , customerAddress :: Address
    } deriving (Show)

