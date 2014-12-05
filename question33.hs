module Question33 (coprime, coprime') where

coprime :: Integer -> Integer -> Bool
--coprime = (==1) . gcd
-- Getting weird type checking error. What's wrong with this?
--coprime a b = (==1) $ gcd a b
-- Why does this work, where my original, brilliant idea doesn't?
coprime m = (==1) . gcd m
-- Ah! I have to provide at least one of the arguments. Weird.

--coprime' a b = gcd a b == 1
coprime' a b = 1 == gcd a b
--coprime' = 1 == gcd -- Ooh, the type checker does not like this one.
