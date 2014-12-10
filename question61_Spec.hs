module Question61_Spec where

import Question55 (BTree (..))
import Question61 (countLeaves, leaves)
import Test.Hspec

main :: IO ()
main = hspec $ do
  describe "Question 61" $ do
    let tree4 = Branch 1 (Branch 2 Empty (Branch 4 Empty Empty))
                         (Branch 2 Empty Empty)
    describe "countLeaves" $ do
      it "Finds two leaves in the specified tree." $
         countLeaves tree4 `shouldBe` 2

    describe "leaves" $ do
      it "Gathers two leaves from the specified tree into a list." $
         leaves tree4 `shouldBe` [4,2]
