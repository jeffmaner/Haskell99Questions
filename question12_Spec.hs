module Question12_Spec where

import Question11 (Encoding (..))
import Question12 (decodeModified, decodeModified', decodeModified'')
import Test.Hspec

main :: IO ()
main = hspec $ do
  describe "Question 11" $ do
    it "Decodes a modified run-length encoding of a list." $
       decodeModified [Multiple 4 'a', Single 'b', Multiple 2 'c',
                       Multiple 2 'a', Single 'd', Multiple 4 'e']
        `shouldBe` "aaaabccaadeeee"

    it "Decodes a modified run-length encoding of a list." $
       decodeModified' [Multiple 4 'a', Single 'b', Multiple 2 'c',
                        Multiple 2 'a', Single 'd', Multiple 4 'e']
        `shouldBe` "aaaabccaadeeee"

    it "Decodes a modified run-length encoding of a list." $
       decodeModified'' [Multiple 4 'a', Single 'b', Multiple 2 'c',
                         Multiple 2 'a', Single 'd', Multiple 4 'e']
        `shouldBe` "aaaabccaadeeee"
