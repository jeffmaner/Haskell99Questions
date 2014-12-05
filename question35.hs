module Question35 (primeFactors', primeFactors'') where

import Data.Numbers.Primes (primeFactors)

primeFactors' = primeFactors
-- I feel like that's cheating.

-- Here's my take on one of the solutions given.
primeFactors'' 1 = []
primeFactors'' n = (p:) $ primeFactors'' $ n `div` p
  where p | null ds   = n                    -- p for prime.
          | otherwise = head ds
        ds = dropWhile ((/=0) . mod n) [2..m] -- ds for divisors.
        m = ceiling $ sqrt $ fromIntegral n     -- m is limit.
