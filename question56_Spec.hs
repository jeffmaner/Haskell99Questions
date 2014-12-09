module Question56_Spec where

import Question55 (BTree (..))
import Question56 (symmetric, symmetric')
import Test.Hspec

main :: IO ()
main = hspec $ do
  describe "Question 56" $ do
    describe "symmetric" $ do
      it "Indicates that a non-symmetric binary tree is not symmetric." $
         symmetric (Branch 'x' (Branch 'x' Empty Empty) Empty) `shouldBe` False

      it "Indicates tha a symmetric binary tree is symmetric." $
         symmetric (Branch 'x' (Branch 'x' Empty Empty) (Branch 'x' Empty Empty)) `shouldBe` True

    describe "symmetric'" $ do
      it "Indicates that a non-symmetric binary tree is not symmetric." $
         symmetric' (Branch 'x' (Branch 'x' Empty Empty) Empty) `shouldBe` False

      it "Indicates tha a symmetric binary tree is symmetric." $
         symmetric' (Branch 'x' (Branch 'x' Empty Empty) (Branch 'x' Empty Empty)) `shouldBe` True
