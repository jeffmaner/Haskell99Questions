module Question56 (symmetric, symmetric') where

import Question55 (BTree (..))

symmetric :: Eq a => BTree a -> Bool
symmetric Empty = True
symmetric (Branch _ l r) = mirror l r

mirror :: BTree a -> BTree a -> Bool
mirror Empty            Empty            = True
--mirror (Branch _ l1 r1) (Branch _ l2 r2) = mirror l1 l2 && mirror r1 r2
mirror (Branch _ l1 r1) (Branch _ l2 r2) = mirror l1 r2 && mirror r1 l2
mirror _                _                = False

-- Yay! I did it! :D
--
-- Ooh, this is neat:
symmetric' t = mirror t t
-- Oops. I was a little off. Corrected.
