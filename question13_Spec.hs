module Question13_Spec where

-- Alright, I don't really understand the requirements.
-- Moving on to the next question.

import Question11 (Encoding (..))
import Question13 (encodeDirect)
import Test.Hspec

main :: IO ()
main = hspec $ do
  describe "Question 13" $ do
    it "Generates a run-length encoding of a list." $
       encodeDirect "aaaabccaadeeee"
        `shouldBe` [Multiple 4 'a', Single 'b', Multiple 2 'c',
                    Multiple 2 'a', Single 'd', Multiple 4 'e']

