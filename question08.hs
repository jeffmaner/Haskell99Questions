module Question08 (compress, compress', compress'') where

import Data.List (group)

compress :: Eq a => [a] -> [a]
compress (x:y:xs)
  | x == y     =     compress (x:xs)
  | otherwise = x : compress (y:xs)
compress es@(x:xs) = es
compress [] = []

-- Hmm. As always, the solutions are informative...

compress' :: Eq a => [a] -> [a]
compress' = map head . group

compress'' :: Eq a => [a] -> [a]
compress'' (x:xs) = x : (compress'' $ dropWhile (==x) xs)
compress'' [] = []
