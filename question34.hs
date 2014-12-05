module Question34 (totient, totient', totient'') where

import Question33 (coprime)

totient :: Integer -> Int
totient 1 = 1
totient m = length $ filter (==True) $ map (coprime m) [1..m-1]

-- Huh.
totient' 1 = 1
totient' m = length $ filter (coprime m) [1..m-1]

-- Ooh!
totient'' m = length [x|x<-[1..m], coprime x m]

-- Solution given for efficiency with very large numbers, too.
