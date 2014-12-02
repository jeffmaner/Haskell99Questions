module Question15 (repli, repli', repli'') where

repli, repli', repli'' :: [a] -> Int -> [a]
repli xs n = concatMap (replicate n) xs

-- Ooh! Pointfree!
repli' = flip $ concatMap . replicate

-- Using the list monad:
repli'' xs n = xs >>= replicate n
