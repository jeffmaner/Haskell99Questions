module Question09_Spec where

import Question09 (pack)
import Test.Hspec

main :: IO ()
main = hspec $ do
  describe "Question 09" $ do
    it "Packs consecutive duplicates of list elements into sublists." $
       pack ['a', 'a', 'a', 'a', 'b', 'c', 'c', 'a', 'a', 'd', 'e', 'e', 'e', 'e']
        `shouldBe` ["aaaa", "b", "cc", "aa", "d", "eeee"]
