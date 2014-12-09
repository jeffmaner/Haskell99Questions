module Question46 (and', or', nand', nor', xor', impl', equ', table', tablen) where

import Control.Monad (replicateM)

and', or', nand', nor', xor', impl', equ' :: Bool -> Bool -> Bool

infixl 3 `equ'`  -- For Question 48.
infixl 4 `or'`   -- For Question 47.
infixl 4 `nor'`  -- For Question 48.
infixl 5 `xor'`  -- For Question 48.
infixl 6 `and'`  -- For Question 47.
infixl 6 `nand'` -- For Question 48.

and'  = (&&)
or'   = (||)
equ'  = (==)
nand' a b = not $ and' a b
nor'  a b = not $ or' a b
xor'  a b = not $ equ' a b
impl' a b = or' (not a) b

table :: (Bool -> Bool -> Bool) -> IO ()
table f = mapM_ putStrLn [show a ++ " " ++ show b ++ " " ++ show (f a b) | a<-[True,False], b<-[True,False]]

table' :: (Bool -> Bool -> Bool) -> String
table' f = printBinary f [True,False]

printBinary :: (Show a, Show b) => (a -> a -> b) -> [a] -> String
printBinary f domain = concatMap (++ "\n") [printBinaryInstance f x y | x<-domain, y<-domain]

printBinaryInstance :: (Show a, Show b) => (a -> a -> b) -> a -> a -> String
printBinaryInstance f x y = show x ++ " " ++ show y ++ " " ++ show (f x y)

tablen :: Int -> ([Bool] -> Bool) -> IO ()
tablen n f = mapM_ putStrLn [toStr a ++ " => " ++ show (f a) | a<-args n]
  where args n = replicateM n [True,False]
        toStr = unwords . map (\x->show x ++ space x)
        space True  = "  "
        space False =  " "
