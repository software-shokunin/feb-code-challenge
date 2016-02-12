module Main where

import System.Environment

data Sign = Negative 
          | Positive

type Number = (Sign, [Integer])

add :: [a] -> [a] -> [a]
add l1 l2 = foldr (:) l2 l1

minus :: Number -> Number -> Number
minus (_, []) (_, []) = (Positive, [])
minus (sign1, l1) (sign2, []) = (sign1, l1)
minus (sign1, []) (sign2, l2) = (sign2, l2)
minus (sign1, (l1:ls1)) (sign2, (l2:ls2)) = minus (sign1, ls1) (sign2, ls2)

plus :: Number -> Number -> Number
plus (Positive, l1) (Positive, l2)  = (,) Positive $ add l1 l2
plus (Negative, l1) (Negative, l2)  = (,) Negative $ add l1 l2
plus n1 n2                          = minus n1 n2

convert :: Integer -> Number 
convert n
  | n < 0 = (Negative, [1..(abs n)])
  | otherwise = (Positive, [1..n])

showNum (Negative,l) = "-" `add` ((show . length) l)
showNum (Positive,l) = (show . length) l

main :: IO ()
main = do
        args <- getArgs
        let first = (read. head) args :: Integer
        let second = (read. head . tail) args :: Integer
        if length args /= 2
        then putStrLn "Invalid input"
        else (putStrLn . showNum) $ plus (convert first) (convert second)
