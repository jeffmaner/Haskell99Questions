module Question23_Spec where

import Question23 (rndSelect)
import Test.Hspec

main :: IO ()
main = hspec $ do
  describe "Question 23" $ do
    it "Extracts three randomly selected elements from the list." $
       rndSelect "abcdefgh" 3 >>= (`shouldBe` "eda")
       -- This is impossible to test this way, as I cannot predict what shouldBe!

