module Question31 (isPrime', isPrime'') where

import Data.Numbers.Primes (isPrime)

isPrime', isPrime'' :: Int -> Bool
isPrime' = isPrime
-- Is it cheating to rely on a library like this?

-- This is a nice solution:
isPrime'' n | n<4 = n>1
isPrime'' n = all ((/=0) . mod n) $ takeWhile (<=m) candidates
  where candidates = (2:3:[x+i | x<-[6,12..], i<-[-1,1]])
        m = floor . sqrt $ fromIntegral n
