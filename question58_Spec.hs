module Question58_Spec where

import Question55 (BTree (..))
import Question58 (symCBalTrees)
import Test.Hspec

main :: IO ()
main = hspec $ do
  describe "Question 58" $ do
    describe "symCBalTrees" $ do
      it "Returns two symmetric trees of five nodes each." $
         symCBalTrees 5 `shouldBe` [Branch 'x' (Branch 'x' Empty (Branch 'x' Empty Empty))
                                               (Branch 'x' (Branch 'x' Empty Empty) Empty)
                                   ,Branch 'x' (Branch 'x' (Branch 'x' Empty Empty) Empty)
                                               (Branch 'x' Empty (Branch 'x' Empty Empty))]

