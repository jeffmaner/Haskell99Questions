module Question46_Spec where

import Question46 (and', or', nand', nor', xor', impl', equ', table', tablen)
import Test.Hspec

main :: IO ()
main = hspec $ do
  describe "Question 46" $ do
    it "and' returns True when given two True values." $
       and' True True `shouldBe` True

    it "and' returns False when given one True and one False." $
       and' True False `shouldBe` False

    it "and' returns False when given one False and one True." $
       and' False True `shouldBe` False

    it "and' returns False when given two False values." $
       and' False False `shouldBe` False

    it "or' returns True when given two True values." $
       or' True True `shouldBe` True

    it "or' returns True when given one True and one False." $
       or' True False `shouldBe` True

    it "or' returns True when given one False and one True." $
       or' False True `shouldBe` True

    it "or' returns False when given two False values." $
       or' False False `shouldBe` False

    it "nand' returns True when given one False and True." $
       nand' False True `shouldBe` True

    -- Bah! I don't want to keep writing these tests...

    it "Prints a truth table for two arguments using functions." $
       table' (\a b->(and' a (or' a b))) `shouldBe` unlines [ "True True True"
                                                           , "True False True"
                                                           , "False True False"
                                                           , "False False False" ]

    it "Prints a truth table for two arguments using operators." $
       table' (\a b->(a `and' `(a `or'` not b))) `shouldBe` unlines [ "True True True"
                                                                 , "True False True"
                                                                 , "False True False"
                                                                 , "False False False" ]

    -- Not sure how to test this one...
    -- it "Prints a truth table for three arguments using operators." $
    --    tablen 3 (\[a,b,c]->(a `and'` (a `or'` c) `equ'` a `and'` b `or'` a `and'` c))
    --                       >>= (`shouldBe` unlines [ "True True True"
    --                                               , "True False True"
    --                                               , "False True False"
    --                                               , "False False False" ])
