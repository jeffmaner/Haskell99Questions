module Question22_Spec where

import Question22 (range, range')
import Test.Hspec

main :: IO ()
main = hspec $ do
  describe "Question 22" $ do
    it "Generates the range between four and nine, inclusive." $
       range 4 9 `shouldBe` [4..9] --[4,5,6,7,8,9]

    it "Generates the range between four and nine, inclusive." $
       range' 4 9 `shouldBe` [4..9] --[4,5,6,7,8,9]

