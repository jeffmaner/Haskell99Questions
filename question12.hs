module Question12 (decodeModified, decodeModified', decodeModified'') where

import Question11 (Encoding (..))

decodeModified :: [Encoding a] -> [a]
decodeModified = reverse . foldl f []
  where f xs (Single x)     = x:xs
        f xs (Multiple n x) = (replicate n x)++xs

decodeModified' :: [Encoding a] -> [a]
decodeModified' = concatMap dec
  where dec (Single x)     = [x]
        dec (Multiple n x) = replicate n x

decodeModified'' :: [Encoding a] -> [a]
decodeModified'' = concatMap (uncurry replicate . toTuple)
  where toTuple (Single x)     = (1,x)
        toTuple (Multiple n x) = (n,x)
        toTuple :: Encoding a -> (Int,a)
