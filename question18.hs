module Question18 (slice, slice', slice'', slice''') where

slice, slice', slice'', slice''' :: [a] -> Int -> Int -> [a]
slice xs i k = take (k-i+1) $ drop (i-1) xs

-- Interesting use of a guard...
slice' xs i k | i>0 = take (k-i+1) $ drop (i-1) xs

-- Hmm. I actually like this list comprehension solution.
slice'' xs i k = [x | (x,j) <- zip xs [1..k], i<=j]

-- And apparently take and drop can be applied in the opposite order, too.
slice''' xs i k = drop (i-1) $ take k xs
