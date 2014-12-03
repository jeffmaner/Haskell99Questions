module Question25 (rndPermu, rndPermu') where

import Data.List (permutations)
import System.Random (getStdGen, randomRIO, randomRs)

-- rndPermu won't type-check, and I don't know how to fix it.
rndPermu, rndPermu' :: [a] -> IO [a]
rndPermu xs = undefined --do
  --gen <- getStdGen
  --let ps = permutations xs
  --n <- randomRs (0, (length ps) - 1) gen
  --return $ ps !! n

-- The first solution uses rndSelect from question 23. That was my first attempt
-- that failed for type-check problems.
--
-- This is essentially what I've attempted above, but it type-checks.

rndElem :: [a] -> IO a
rndElem xs = do
  n <- randomRIO (0, length xs - 1)
  return $ xs !! n

rndPermu' = rndElem . permutations
-- This comes with the following warning:
-- This may choke long lists.
