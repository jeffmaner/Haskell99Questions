module Question41 (goldbachList, goldbachList', Result (..)) where

import Question40 (goldbach)

data Result = Result { rEven :: Int, rComposition :: (Int,Int) } deriving (Eq, Show)

goldbachList :: Int -> Int -> [Result]
goldbachList m n = map f $ filter even [m..n]
  where f x = Result { rEven=x, rComposition=goldbach x }

goldbachList' :: Int -> Int -> Int -> [Result]
goldbachList' m n b = filter f $ goldbachList m n
  where f Result { rEven=_, rComposition=(x,y) } = x>b && y>b

-- I like my solutions better than the ones presented. :)
