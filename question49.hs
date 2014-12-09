module Question49 (gray, gray') where

-- This was my weak solution. I was too distracted to spend real effort on it.
gray :: Int -> [String]
gray 1 = [ x       | x<-["0","1"] ]
gray 2 = [ x++y    | x<-["0","1"], y<-["0","1"] ]
gray 3 = [ x++y++z | x<-["0","1"], y<-["0","1"], z<-["0","1"] ]
gray _ = undefined

-- This is probably the best solution given for this problem.
gray' :: Integral a => a -> [String]
gray' 0 = [""]
gray' n = foldr f [] $ gray' (n-1)
  where f s a = ("0"++s):("1"++s):a
