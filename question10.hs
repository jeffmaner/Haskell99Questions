module Question10 (encode, encode') where

import Control.Arrow ((&&&))
import Data.List (group)

encode :: Eq a => [a] -> [(Int,a)]
encode = map enc . group
  where enc xs = (length xs, head xs)

-- The comment says "(ab)using the arrow operator...". I wonder why. This rocks!
encode' :: Eq a => [a] -> [(Int,a)]
encode' = map (length &&& head) . group
