module Question24 (rndSelectR, rndSelectR') where

import Control.Applicative ((<$>))
import Data.List (nub)
import Question23 (rndSelect)
import System.Random (getStdGen, randomRs)

rndSelectR, rndSelectR' :: Int -> Int -> IO [Int]
rndSelectR n m = rndSelect [1..m] n
-- Unfortunately, rndSelect doesn't return n *different* numbers.
-- That wasn't part of its specification.

rndSelectR' n m = take n . nub . randomRs (1,m) <$> getStdGen
