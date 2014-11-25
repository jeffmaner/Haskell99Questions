module Question05 (reverse', reverse'', reverse''') where

-- Reverse a list.

reverse' :: [a] -> [a]
reverse' = f []
  where f a (x:xs) = f (x:a) xs
        f a [] = a

reverse'' :: [a] -> [a]
reverse'' (x:xs) = reverse'' xs ++ [x]
reverse'' [] = []
-- ... wasteful, as it repeatedly reconses the result...

-- Ooh!
reverse''' :: [a] -> [a]
reverse''' = foldl (flip (:)) []
