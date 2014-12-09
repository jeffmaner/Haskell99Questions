module Question59_Spec where

import Question55 (BTree (..))
import Question59 (hbalTree)
import Test.Hspec

main :: IO ()
main = hspec $ do
  describe "Question 59" $ do
    describe "hbalTree" $ do
      let ts = hbalTree 'x' 3
      let expected = [ Branch 'x' (Branch 'x' Empty Empty) (Branch 'x' Empty (Branch 'x' Empty Empty))
                     , Branch 'x' (Branch 'x' Empty Empty) (Branch 'x' (Branch 'x' Empty Empty) Empty)
                     , Branch 'x' (Branch 'x' Empty Empty) (Branch 'x' (Branch 'x' Empty Empty) (Branch 'x' Empty Empty))
                     , Branch 'x' (Branch 'x' Empty (Branch 'x' Empty Empty)) (Branch 'x' Empty Empty) ]
      it "Includes all four of the specified trees in what it returns." $
         all (`elem` ts) expected `shouldBe` True

