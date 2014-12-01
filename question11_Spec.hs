module Question11_Spec where

import Question11 (Encoding (..), encodeModified)
import Test.Hspec

main :: IO ()
main = hspec $ do
  describe "Question 11" $ do
    it "Generates a modified run-length encoding of a list." $
       encodeModified "aaaabccaadeeee"
        `shouldBe` [Multiple 4 'a', Single 'b', Multiple 2 'c',
                    Multiple 2 'a', Single 'd', Multiple 4 'e']

