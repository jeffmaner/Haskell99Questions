module Question40_Spec where

import Question40 (goldbach)
import Test.Hspec

main :: IO ()
main = hspec $ do
  describe "Question 40" $ do
    it "Determines the two primes that sum to 28." $
       goldbach 28 `shouldBe` (5,23)

