module Question11 (Encoding (..), encodeModified) where

import Question10 (encode)

data Encoding a = Single a
                | Multiple Int a deriving (Eq, Show)

encodeModified :: Eq a => [a] -> [Encoding a]
encodeModified = map enc . encode
  where enc (1,x) = Single x
        enc (n,x) = Multiple n x
