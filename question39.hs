module Question39 (primesR, primesR', primesR'') where

import Data.Numbers.Primes (isPrime, primes)

primesR :: Int -> Int -> [Int]
primesR m n = [p|p<-takeWhile (<=n) primes, p>=m]
-- I tried to be clever with a list comprehension. :P

primesR' m n = takeWhile (<=n) $ dropWhile (<m) primes

-- This is an interesting approach:
primesR'' :: Integral a => a -> a -> [a]
primesR'' m n | even m = f [m+1,m+3..n]
              |  odd m = f [m  ,m+2..n]
  where f = filter isPrime
