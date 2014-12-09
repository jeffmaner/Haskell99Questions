module Question57 (construct) where

import Question55 (BTree (..))

construct :: Ord a => [a] -> BTree a
construct = foldl (flip add) Empty
  where add x Empty = Branch x Empty Empty
        add x t@(Branch y l r) = case compare x y of
                                   LT -> Branch y (add x l) r
                                   GT -> Branch y l (add x r)
                                   EQ -> t

-- Well, I was on the right path. I looked at the solution and just made the
-- necessary changes.
