module Question03 (elementAt, elementAt') where

-- Find the kth element of a list, with the first element as 1.

elementAt :: [a] -> Int -> a
elementAt xs n = f 1 xs
  where f m (y:ys)
          | m==n = y
          | otherwise = f (m+1) ys
        f _ [] = undefined

-- This is interesting...
elementAt' xs n
  | length xs < n = error "Index out of bounds."
  | otherwise     = fst . last $ zip xs [1..n]
