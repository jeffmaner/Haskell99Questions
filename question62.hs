module Question62 (atLevel, internals) where

import Question55 (BTree (..))

internals :: BTree a -> [a]
internals Empty                  = []
internals (Branch _ Empty Empty) = []
internals (Branch x l     r)     = x : internals l ++ internals r

atLevel :: BTree a -> Int -> [a]
atLevel Empty          _ = []
atLevel (Branch x _ _) 1 = [x]
atLevel (Branch _ l r) n = atLevel l (n-1) ++ atLevel r (n-1)
