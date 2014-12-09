module Question58 (symCBalTrees) where

import Question55 (BTree (..), cbalTree)
import Question56 (symmetric)

symCBalTrees :: Int -> [BTree Char]
symCBalTrees = filter symmetric . cbalTree

-- The solutions page lists this solution as less efficient. But it's precisely
-- what the question asks for, isn't it?
