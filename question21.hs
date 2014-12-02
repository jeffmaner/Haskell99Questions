module Question21 (insertAt, insertAt') where

insertAt, insertAt' :: a -> [a] -> Int -> [a]
insertAt x xs n = let m = n-1 in (take m xs) ++ [x] ++ drop m xs

-- I like the discussion on efficiency given around this solution:
insertAt' e ys n = foldr f [] $ zip [1..] ys
  where f (i,x) xs
          | i==n       = e:x:xs
          | otherwise =   x:xs
