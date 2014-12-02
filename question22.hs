module Question22 (range, range') where

range, range' :: Int -> Int -> [Int]
range m n = [m..n]

-- Huh! I learned a new function:
range' = enumFromTo
