module Question19 (rotate, rotate') where

rotate, rotate' :: [a] -> Int -> [a]
rotate xs n
  | n>=0       = rot n
  | otherwise = rot $ n + length xs
  where rot m = drop m xs ++ take m xs

-- As usual (lol!), I like my solution better than those presented. But...

rotate' xs n = let m = length xs in take m $ drop (n + m) $ cycle xs
