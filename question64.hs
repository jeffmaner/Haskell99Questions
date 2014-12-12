module Question64 (layout') where

import Question55 (BTree (..))

-- My attempt, a failure. :P
layout :: BTree a -> BTree (a,(Int,Int))
layout t = layout' (nodeCount t) 1 1 t
  where
    layout' _ _ _ Empty = Empty
    layout' x y _ (Branch a Empty Empty) = Branch (a,(x,y)) Empty Empty
    layout' x y n (Branch a l r) = Branch (a,(x+nodeCount l-n,y)) (layout' (nodeCount l) (y+1) (n+1) l) (layout' (x-1+nodeCount r) (y+1) (n+1) r)

nodeCount :: BTree a -> Int
nodeCount Empty          = 0
nodeCount (Branch _ l r) = 1 + nodeCount l + nodeCount r

type Pos = (Int,Int)

layout' :: BTree a -> BTree (a,Pos)
layout' = fst . f 1 1
  where f x y Empty = (Empty, x)
        f x y (Branch a l r) = (Branch (a, (x',y)) l' r', x'')
          where (l',x' ) = f  x     (y+1) l
                (r',x'') = f (x'+1) (y+1) r
-- I think the explanation is warranted here:
-- f is passed the x-coordinate for the left-most node of the subtree, the y-coordinate
-- for the root of the subtree, and the subtree itself. It returns the subtree annotated
-- with positions, plus the count of Branch nodes in the subtree.
