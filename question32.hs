module Question32 (gcd', myGCD) where

gcd' :: Int -> Int -> Int
gcd' = gcd
-- Okay, the specification said to use Euclid's algorithm. Oops.

myGCD :: Integer -> Integer -> Integer
myGCD a b
      | b==0       = abs a
      | otherwise = myGCD b $ a `mod` b

