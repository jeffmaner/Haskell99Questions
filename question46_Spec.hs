module Question46_Spec where

import Question46 (and', or', nand', nor', xor', impl', equ', table)
import Test.Hspec

main :: IO ()
main = hspec $ do
  describe "Question 41" $ do
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
