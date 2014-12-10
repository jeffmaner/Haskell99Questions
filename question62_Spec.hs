module Question62_Spec where

import Question55 (BTree (..))
import Question62 (atLevel, internals)
import Test.Hspec

main :: IO ()
main = hspec $ do
  describe "Question 62" $ do
    let tree4 = Branch 1 (Branch 2 Empty (Branch 4 Empty Empty))
                         (Branch 2 Empty Empty)
    describe "internals" $ do
      it "Gathers two internal nodes from the specified tree into a list." $
         internals tree4 `shouldBe` [1,2]

    describe "atLevel" $ do
      it "Gathers two nodes at level 2 from the specified tree into a list." $
         atLevel tree4 2 `shouldBe` [2,2]

      it "Gathers the single base node from the specified tree into a list." $
         atLevel tree4 1 `shouldBe` [1]

      it "Gathers the single node at level 3 from the specified tree into a list." $
         atLevel tree4 3 `shouldBe` [4]
