module Question07_Spec where

import Question07 (NestedList (..), flatten)
import Test.Hspec

main :: IO ()
main = hspec $ do
  describe "Question 07" $ do
    it "Flattens a singleton." $
       flatten (Elem 5) `shouldBe` [5]

    it "Flattens a nested list." $
       flatten (List [Elem 1, List [Elem 2, List [Elem 3, Elem 4], Elem 5]]) `shouldBe` [1,2,3,4,5]

    it "Flattens an empty list." $
       flatten (List []) `shouldBe` []
