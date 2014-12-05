module Question40 (goldbach) where

import Data.Numbers.Primes (primes)

goldbach :: Integral a => a -> (a,a)
goldbach n = head [(x,y) | x<-ps, y<-ps, x+y==n]
  where ps = takeWhile (<=n) primes
