module Question08_Spec where

import Question08 (compress, compress', compress'')
import Test.Hspec

main :: IO ()
main = hspec $ do
  describe "Question 08" $ do
    it "Eliminates consecutive duplicates of list elements." $
       compress "aaaabccaadeeee" `shouldBe` "abcade"

    it "Eliminates consecutive duplicates of list elements." $
       compress' "aaaabccaadeeee" `shouldBe` "abcade"

    it "Eliminates consecutive duplicates of list elements." $
       compress'' "aaaabccaadeeee" `shouldBe` "abcade"
