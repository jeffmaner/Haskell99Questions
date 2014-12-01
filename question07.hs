module Question07 (NestedList (..), flatten) where

data NestedList a = Elem a | List [NestedList a] deriving (Eq, Show)
-- Big, nasty error message. And nothing useful on the solutions page. Okay...

flatten :: NestedList a -> [a]
flatten = undefined
