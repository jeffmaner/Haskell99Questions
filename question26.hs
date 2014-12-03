module Question26 (combinations, combinations') where

import Data.List (nub, permutations, subsequences)

combinations, combinations' :: Eq a => Int -> [a] -> [[a]]
combinations n xs = nub . map (take n) $ permutations xs

-- This works for small xs (length <= 6), but is a dog for length of 12!
-- 5,797.2199 seconds. Lmao!

-- Ooh, this looks nice!
combinations' k = filter ((k==) . length) . subsequences
-- Hmm. It fails on my simple tests, but quickly and easily computes the proper
-- results for the big test.
