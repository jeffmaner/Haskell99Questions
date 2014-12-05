module Question36_Spec where

import Question36 (primeFactorsMultiplicity, primeFactorsMultiplicity')
import Test.Hspec

main :: IO ()
main = hspec $ do
  describe "Question 36" $ do
    it "Determines the multiplicity of the prime factors for 315." $
       primeFactorsMultiplicity 315 `shouldBe` [(3,2),(5,1),(7,1)]

    it "Determines the multiplicity of the prime factors for 315." $
       primeFactorsMultiplicity' 315 `shouldBe` [(3,2),(5,1),(7,1)]

