module Question17_Spec where

import Question17 (split, split', split'')
import Test.Hspec

main :: IO ()
main = hspec $ do
  describe "Question 17" $ do
    it "Splits a list into two parts, the first of length 3." $
       split "abcdefghik" 3 `shouldBe` ("abc", "defghik")

    it "Splits a list into two parts, the first of length 3." $
       split' "abcdefghik" 3 `shouldBe` ("abc", "defghik")

    it "Splits a list into two parts, the first of length 3." $
       split'' "abcdefghik" 3 `shouldBe` ("abc", "defghik")

