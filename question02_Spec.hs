module Question02_Spec where

import Question02 (penultimate, penultimate')
import Test.Hspec

main :: IO ()
main = hspec $ do
  describe "Question 02" $ do
    it "Returns 3 when given [1,2,3,4]." $
       penultimate [1,2,3,4] `shouldBe` 3

    it "Returns 'y' when given ['a'..'z']." $
       penultimate ['a'..'z'] `shouldBe` 'y'

    it "Returns 3 when given [1,2,3,4]." $
       penultimate' [1,2,3,4] `shouldBe` 3

    it "Returns 'y' when given ['a'..'z']." $
       penultimate' ['a'..'z'] `shouldBe` 'y'
