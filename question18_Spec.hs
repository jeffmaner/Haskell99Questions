module Question18_Spec where

import Question18 (slice, slice', slice'', slice''')
import Test.Hspec

main :: IO ()
main = hspec $ do
  describe "Question 18" $ do
    it "Slices a list into a sublist." $
       slice "abcdefghik" 3 7 `shouldBe` "cdefg"

    it "Slices a list into a sublist." $
       slice' "abcdefghik" 3 7 `shouldBe` "cdefg"

    it "Slices a list into a sublist." $
       slice'' "abcdefghik" 3 7 `shouldBe` "cdefg"

    it "Slices a list into a sublist." $
       slice''' "abcdefghik" 3 7 `shouldBe` "cdefg"

