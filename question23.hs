module Question23 (rndSelect) where

import System.Random

-- Okay, I'll admit that I looked at the solutions for this one. I'm not too
-- familiar with System.Random, nor how to use IO from within a pure function.
-- So here is a solution that looked good to me.

rndSelect :: [a] -> Int -> IO [a]
rndSelect xs n = do
  gen <- getStdGen
  return $ take n [ xs !! x | x <- randomRs (0, (length xs) - 1) gen ]
