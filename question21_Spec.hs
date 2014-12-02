module Question21_Spec where

import Question21 (insertAt, insertAt')
import Test.Hspec

main :: IO ()
main = hspec $ do
  describe "Question 21" $ do
    it "Inserts X between the first and second characters of the list." $
       insertAt 'X' "abcd" 2 `shouldBe` "aXbcd"

    it "Inserts X between the first and second characters of the list." $
       insertAt' 'X' "abcd" 2 `shouldBe` "aXbcd"

