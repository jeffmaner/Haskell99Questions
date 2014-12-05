module Question35_Spec where

import Question35 (primeFactors', primeFactors'')
import Test.Hspec

main :: IO ()
main = hspec $ do
  describe "Question 35" $ do
    it "Determines the prime factors for 315 to be 3, 3, 5, and 7." $
       primeFactors' 315 `shouldBe` [3,3,5,7]

    it "Determines the prime factors for 315 to be 3, 3, 5, and 7." $
       primeFactors'' 315 `shouldBe` [3,3,5,7]

