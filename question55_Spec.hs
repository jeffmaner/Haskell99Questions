module Question55_Spec where

import Data.List (nub)
import Question55 (BTree (..), cbalTree)
import Test.Hspec

main :: IO ()
main = hspec $ do
  describe "Question 55" $ do
    let ts = cbalTree 4
    describe "cbalTree" $ do
      it "Returns four possible balanced trees with four nodes." $
         (length . nub) ts `shouldBe` 4

      it "Includes permutation 1." $
          -- permutation 1
          --     x
          --    / \
          --   x   x
          --        \
          --         x
          (Branch 'x' (Branch 'x' Empty Empty)
                      (Branch 'x' Empty
                                  (Branch 'x' Empty Empty)) `elem` ts) `shouldBe` True

      it "Includes permutation 2." $
          -- permutation 2
          --     x
          --    / \
          --   x   x
          --      /
          --     x
          (Branch 'x' (Branch 'x' Empty Empty)
                      (Branch 'x' (Branch 'x' Empty Empty)
                                  Empty) `elem` ts) `shouldBe` True

      it "Includes permutation 3." $
          -- permutation 3
          --     x
          --    / \
          --   x   x
          --    \
          --     x
          (Branch 'x' (Branch 'x' Empty
                                  (Branch 'x' Empty Empty))
                      (Branch 'x' Empty Empty) `elem` ts) `shouldBe` True

      it "Includes permutation 4." $
          -- permutation 4
          --     x
          --    / \
          --   x   x
          --  /
          -- x
          (Branch 'x' (Branch 'x' (Branch 'x' Empty Empty)
                                  Empty)
                      (Branch 'x' Empty Empty) `elem` ts) `shouldBe` True

