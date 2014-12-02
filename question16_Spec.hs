module Question16_Spec where

import Question16 (dropEvery, dropEvery')
import Test.Hspec

main :: IO ()
main = hspec $ do
  describe "Question 16" $ do
    it "Drops every third element from a list." $
       dropEvery "abcdefghik" 3 `shouldBe` "abdeghk"

    it "Drops every third element from a list." $
       dropEvery' "abcdefghik" 3 `shouldBe` "abdeghk"
