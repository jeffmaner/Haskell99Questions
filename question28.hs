module Question28 (lfsort, lsort, lsort') where

import Data.Function (on)
import Data.List (groupBy, sortBy)
import Data.Ord (comparing)

-- Okay, lfsort eludes me.
-- lfsort :: [[a]] -> [[a]]
-- lfsort = sortBy f . map g
--   where f (m,xs) (n,ys)
--           | m > n = GT
--           | m < n = LT
--           | m == n = EQ
--         g xs = (length xs, xs)

lsort, lfsort :: [[a]] -> [[a]]
lsort = sortBy f
  where f xs ys
          | m > n = GT
          | m < n = LT
          | m == n = EQ
            where m = length xs
                  n = length ys

-- Ooh! Neat:
lsort' = sortBy (comparing length)

-- Oh, wow:
lfsort = concat . lsort' . groupBy ((==) `on` length) . lsort'
-- This fails the specification, but actually works per the description of
-- the specification. It places "o" before "ijkl". So I'll make the test
-- more general.
-- Bah. I can't figure out how to test it without using it to prove itself. Lol!
