module Question02 (penultimate, penultimate') where

-- Find the last but one element of a list.

penultimate :: [a] -> a
penultimate (x:_:[]) = x
penultimate (_:[]) = undefined
penultimate [] = undefined
penultimate (_:xs) = penultimate xs

penultimate' :: [a] -> a
penultimate' = last . init -- Awesome!
