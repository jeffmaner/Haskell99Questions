module Question63 (completeBinaryTree, isCompleteBinaryTree, isCompleteBinaryTree') where

import Question55 (BTree (..))
import Question62 (atLevel)

{-
  -- Generating binary trees just doesn't click for me, I guess. :P
completeBinaryTree :: Int -> BTree Char
completeBinaryTree n
  | n<=0 = Empty
  | otherwise = Branch 'x' (completeBinaryTree (n-2)) (completeBinaryTree (n-2))

isLevelFull :: Int -> [BTree a] -> Bool
isLevelFull n bs = length bs == 2^(n-1)
-}

completeBinaryTree :: Int -> BTree Char
completeBinaryTree n = generate 1
  where generate x
          | x>n       = Empty
          | otherwise = Branch 'x' (generate (2*x  ))
                                   (generate (2*x+1))

-- I think I like this solution the best for isCompleteBinaryTree.
isCompleteBinaryTree :: BTree a -> Bool
isCompleteBinaryTree = (/=Nothing) . completeHeight

completeHeight :: BTree a -> Maybe Int
completeHeight Empty = Just 0
completeHeight (Branch _ l r) = do
  hr <- completeHeight r
  hl <- completeHeight l
  if (hl==hr) || (hl-hr==1)
  then return $ hl+1
  else Nothing

-- But this one's pretty cool, too.
isCompleteBinaryTree' t = b>a
  where (a,b) = maxmin t 1
        maxmin Empty          m = (0,m)
        maxmin (Branch _ l r) m = (max m $ max maxl maxr, min minl minr)
          where (maxl,minl) = maxmin l (2*m)
                (maxr,minr) = maxmin r (2*m + 1)
