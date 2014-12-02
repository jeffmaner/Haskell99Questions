module Question17 (split, split', split'') where

split :: [a] -> Int -> ([a],[a])
split = f []
  where f a    []  _ = (a,[])
        f a    xs  0 = (a,xs)
        f a (x:xs) c = f (a++[x]) xs (c-1)

-- Apparently we weren't supposed to use "predefined predicates." That would
-- rule out these two solutions:

split' xs n = (take n xs, drop n xs)
split'' = flip splitAt

-- Those are pretty cool. I actually like my solution better than the ones
-- presented, other than those two.
