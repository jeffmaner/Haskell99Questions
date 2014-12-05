module Question37_Spec where

import Question37 (totient, totient')
import Test.Hspec

main :: IO ()
main = hspec $ do
  describe "Question 37" $ do
    it "Determines that 10 has four coprimes." $
       totient 10 `shouldBe` 4

    it "Determines that one has one coprime." $
       totient 1 `shouldBe` 1

    it "Determines that 10 has four coprimes." $
       totient' 10 `shouldBe` 4

    it "Determines that one has one coprime." $
       totient' 1 `shouldBe` 1
