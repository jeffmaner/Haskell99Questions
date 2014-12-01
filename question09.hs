module Question09 (pack) where

import Data.List (group)

pack :: Eq a => [a] -> [[a]]
pack = group
