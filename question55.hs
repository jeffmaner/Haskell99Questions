module Question55 (BTree (..), cbalTree) where

data BTree a = Empty
             | Branch a (BTree a) (BTree a) deriving (Eq,Show)

-- I don't have much experience with binary trees. My attempt fails to compile,
-- with lots of complaints. Lol.
{-
cbalTree :: Int -> [BTree a]
cbalTree n
    | n<1       = Empty
    | otherwise = (Branch 'x' (cbalTree (n-1)) (cbalTree (n-2))) : [Branch 'x' (cbalTree (n-2)) (cbalTree (n-1))]
-}

-- The compiler complains about a rigid type variable in this signature. Ah.
-- BTree is generic, but this function is not.
cbalTree :: Int -> [BTree Char]
cbalTree 0 = [Empty]
cbalTree 1 = [leaf 'x']
cbalTree n
  | odd  n = [ Branch 'x' l r | l<-cbalTree m, r<-cbalTree m ]
  | even n = concat [ [Branch 'x' l r, Branch 'x' r l] | l <- cbalTree m, r <- cbalTree (n `div` 2) ]
  where m = (n-1) `div` 2

leaf :: a -> BTree a
leaf x = Branch x Empty Empty
