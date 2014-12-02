module Question16 (dropEvery, dropEvery') where

dropEvery, dropEvery' :: [a] -> Int -> [a]
dropEvery ys n = f ys 1
  where f (x:xs) c
          | c==n       =   f xs 1
          | otherwise = x:f xs (c+1)
        f [] _ = []

-- Okay, I like my solution best. But here is one more for variety's sake.

dropEvery' = flip $ \n->map snd . filter ((n/=) . fst) . zip (cycle [1..n])
