module Main where

import System.Environment

data Sign = Negative 
          | Positive

data UnsignedNumber = Zero
                    | Succ UnsignedNumber

instance Show UnsignedNumber where
  show = show . convertToInt


type Number = (Sign, UnsignedNumber)

convertToUnsignedNumber :: Int -> UnsignedNumber
convertToUnsignedNumber n = foldr (const Succ) Zero [1..n]

convertToInt :: UnsignedNumber -> Int
convertToInt = length . convertToList 
  where convertToList Zero = []
        convertToList (Succ n) = 1 : (convertToList n)

add :: UnsignedNumber -> UnsignedNumber -> UnsignedNumber
add l1 Zero = l1
add l1 (Succ l2) = add (Succ l1) l2

minus :: Number -> Number -> Number
minus (_, Zero) (_, Zero) = (Positive, Zero)
minus (sign1, l1) (sign2, Zero) = (sign1, l1)
minus (sign1, Zero) (sign2, l2) = (sign2, l2)
minus (sign1, (Succ n1)) (sign2, (Succ n2)) = minus (sign1, n1) (sign2, n2)

plus :: Number -> Number -> Number
plus (Positive, l1) (Positive, l2)  = (,) Positive $ add l1 l2
plus (Negative, l1) (Negative, l2)  = (,) Negative $ add l1 l2
plus n1 n2                          = minus n1 n2

convert :: Int -> Number 
convert n
  | n < 0 = (Negative, (convertToUnsignedNumber . abs) n)
  | otherwise = (Positive, convertToUnsignedNumber n)

showNum (Negative,l) = "-" ++ (show  l)
showNum (Positive,l) = show l

main :: IO ()
main = do
        args <- getArgs
        let first = (read. head) args :: Int
        let second = (read. head . tail) args :: Int
        if length args /= 2
        then putStrLn "Invalid input"
        else (putStrLn . showNum) $ plus (convert first) (convert second)
