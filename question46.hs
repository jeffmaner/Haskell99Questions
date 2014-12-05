module Question46 (and', or', nand', nor', xor', impl', equ', table) where

and', or', nand', nor', xor', impl', equ' :: Bool -> Bool -> Bool

and'  = (&&)
or'   = (||)
equ'  = (==)
nand' a b = not $ and' a b
nor'  a b = not $ or' a b
xor'  a b = not $ equ' a b
impl' a b = or' (not a) b

table :: (Bool -> Bool -> Bool) -> String
table = undefined
