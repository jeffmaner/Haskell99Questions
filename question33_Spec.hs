module Question33_Spec where

import Question33 (coprime, coprime')
import Test.Hspec

main :: IO ()
main = hspec $ do
  describe "Question 33" $ do
    it "Determines 35 and 64 to be coprime." $
       coprime 35 64 `shouldBe` True

    it "Determines 36 and 63 not to be coprime." $
       coprime 36 63 `shouldBe` False

    it "Determines 35 and 64 to be coprime." $
       coprime' 35 64 `shouldBe` True

    it "Determines 36 and 63 not to be coprime." $
       coprime' 36 63 `shouldBe` False

