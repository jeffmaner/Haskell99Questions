module Question37 (totient, totient') where

import Question36 (primeFactorsMultiplicity)

--totient :: Integer -> Int -- Type checking errors, eliminated by not specifying the type!
totient = foldl f 1 . primeFactorsMultiplicity
  where f a (p,m) = a * (p-1) * p ^ (m-1)

totient' m = product [(p-1) * p ^ (m-1) | (p,m) <- primeFactorsMultiplicity m]
