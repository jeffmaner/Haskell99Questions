module Question19_Spec where

import Question19 (rotate, rotate')
import Test.Hspec

main :: IO ()
main = hspec $ do
  describe "Question 19" $ do
    it "Rotates a list three places to the left." $
       rotate "abcdefgh" 3 `shouldBe` "defghabc"

    it "Rotates a list two places to the right." $
       rotate "abcdefgh" (-2) `shouldBe` "ghabcdef"

    it "Rotates a list three places to the left." $
       rotate' "abcdefgh" 3 `shouldBe` "defghabc"

    it "Rotates a list two places to the right." $
       rotate' "abcdefgh" (-2) `shouldBe` "ghabcdef"

