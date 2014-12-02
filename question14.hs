module Question14 (dupli, dupli', dupli'', dupli''') where

dupli :: [a] -> [a]
dupli = concatMap (replicate 2)

-- I like my solution the best, but here are a few others.

dupli' [] = []
dupli' (x:xs) = x:x:dupli' xs

dupli'' xs = concat [[x,x] | x <- xs]

dupli''' = concatMap (\x->[x,x])
