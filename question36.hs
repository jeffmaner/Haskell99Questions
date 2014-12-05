module Question36 (primeFactorsMultiplicity, primeFactorsMultiplicity') where

import Data.List (group)
import Data.Numbers.Primes (primeFactors)
import Question10 (encode)

primeFactorsMultiplicity :: Integer -> [(Integer,Int)]
primeFactorsMultiplicity = map f . group . primeFactors
  where f ns = (head ns, length ns)

-- Oh, yeah! Question10 provides encode.
primeFactorsMultiplicity' = map swap . encode . primeFactors
  where swap (x,y) = (y,x)
