module Question01_Spec where

import Question01 (last')
import Test.Hspec

main :: IO ()
main = hspec $ do
  describe "Question 01" $ do
    it "Returns 4 when given [1,2,3,4]." $
       last' [1,2,3,4] `shouldBe` 4

    it "Returns 'z' when given ['x','y','z']." $
       last' ['x','y','z'] `shouldBe` 'z'
