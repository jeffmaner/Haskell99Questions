module Question63_Spec where

import Question55 (BTree (..))
import Question63 (completeBinaryTree, isCompleteBinaryTree, isCompleteBinaryTree')
import Test.Hspec

main :: IO ()
main = hspec $ do
  describe "Question 63" $ do
    describe "completeBinaryTree" $ do
      it "Generates a complete binary tree with four nodes." $
         --     x
         --    /\
         --   x x
         --  /
         -- x
         completeBinaryTree 4 `shouldBe` Branch 'x'
                                                (Branch 'x'
                                                        (Branch 'x'
                                                                Empty
                                                                Empty)
                                                        Empty)
                                                (Branch 'x'
                                                        Empty
                                                        Empty)

    describe "isCompleteBinaryTree" $ do
      it "Confirms that the specified tree is a complete binary tree." $
         --   x
         --  /\
         -- x x
         (isCompleteBinaryTree $ Branch 'x'
                                        (Branch 'x'
                                                Empty
                                                Empty)
                                        (Branch 'x'
                                                Empty
                                                Empty)) `shouldBe` True

    describe "isCompleteBinaryTree'" $ do
      it "Confirms that the specified tree is a complete binary tree." $
         --   x
         --  /\
         -- x x
         (isCompleteBinaryTree' $ Branch 'x'
                                         (Branch 'x'
                                                 Empty
                                                 Empty)
                                         (Branch 'x'
                                                 Empty
                                                 Empty)) `shouldBe` True

