module Question20_Spec where

import Question20 (removeAt)
import Test.Hspec

main :: IO ()
main = hspec $ do
  describe "Question 20" $ do
    it "Removes the second item from the list." $
       removeAt "abcd" 2 `shouldBe` ('b',"acd")

