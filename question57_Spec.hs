module Question57_Spec where

import Question55 (BTree (..))
import Question56 (symmetric)
import Question57 (construct)
import Test.Hspec

main :: IO ()
main = hspec $ do
  describe "Question 57" $ do
    it "Constructs a proper binary search tree." $
       construct [3,2,5,7,1] `shouldBe` Branch 3 (Branch 2 (Branch 1 Empty Empty) Empty) (Branch 5 Empty (Branch 7 Empty Empty))

    it "Indicates that a non-symmetric binary tree is not symmetric." $
       (symmetric . construct $ [3,2,5,7,4]) `shouldBe` False

    it "Indicates tha a symmetric binary tree is symmetric." $
       (symmetric . construct $ [5,3,18,1,4,12,21]) `shouldBe` True

