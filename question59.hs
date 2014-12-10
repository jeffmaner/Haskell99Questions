module Question59 (hbalTree) where

import Question55 (BTree (..))

-- I admit to barely even trying on this one...

hbalTree :: a -> Int -> [BTree a]
hbalTree _ 0 = [Empty]
hbalTree x 1 = [leaf x]
hbalTree x h = [ Branch x l r | (hl,hr)<-[(h-2,h-1), (h-1,h-1), (h-1,h-2)]
                              , l<-hbalTree x hl
                              , r<-hbalTree x hr ]
leaf :: a -> BTree a
leaf x = Branch x Empty Empty
