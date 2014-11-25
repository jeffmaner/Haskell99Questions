module Question03_Spec where

import Question03 (elementAt, elementAt')
import Test.Hspec

main :: IO ()
main = hspec $ do
  describe "Question 03" $ do
    it "Returns 2 when given [1,2,3] and 2." $
       elementAt [1,2,3] 2 `shouldBe` 2

    it "Returns 'e' when given \"haskell\" and 5." $
       elementAt "haskell" 5 `shouldBe` 'e'

    it "Returns 2 when given [1,2,3] and 2." $
       elementAt' [1,2,3] 2 `shouldBe` 2

    it "Returns 'e' when given \"haskell\" and 5." $
       elementAt' "haskell" 5 `shouldBe` 'e'
