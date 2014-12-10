module Question61 (countLeaves,leaves) where

import Question55 (BTree (..))

countLeaves :: BTree a -> Int
countLeaves Empty                  = 0
countLeaves (Branch _ Empty Empty) = 1
countLeaves (Branch _ l     r)     = countLeaves l + countLeaves r

leaves :: BTree a -> [a]
leaves Empty                  = []
leaves (Branch x Empty Empty) = [x]
leaves (Branch _ l     r)     = leaves l ++ leaves r
