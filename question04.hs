module Question04 (length', length'', length''', length'''') where

-- Find the number of elements of a list.

length' :: [a] -> Int
length' (x:xs) = 1 + length' xs
length' [] = 0

-- Inspired by the answer I saw on the previous question...
length'' :: [a] -> Int
length'' = fst . last . zip [1..]

-- Ooh, this is cool!
length''' :: [a] -> Int
length''' = foldr (const (+1)) 0

-- Another neat idea!
length'''' :: [a] -> Int
length'''' = sum . map (\_->1)
