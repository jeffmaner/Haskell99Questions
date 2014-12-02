module Question20 (removeAt) where

removeAt :: [a] -> Int -> (a,[a])
removeAt ys n = let (h,t) = splitAt n ys in (last h, init h ++ t)

-- My solution rules! :)
