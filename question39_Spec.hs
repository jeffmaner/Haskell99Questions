module Question39_Spec where

import Question39 (primesR, primesR', primesR'')
import Test.Hspec

main :: IO ()
main = hspec $ do
  describe "Question 39" $ do
    it "Determines the primes between 10 and 20." $
       primesR 10 20 `shouldBe` [11,13,17,19]

    it "Determines the primes between 10 and 20." $
       primesR' 10 20 `shouldBe` [11,13,17,19]

    it "Determines the primes between 10 and 20." $
       primesR'' 10 20 `shouldBe` [11,13,17,19]

