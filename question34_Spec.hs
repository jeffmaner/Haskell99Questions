module Question34_Spec where

import Question34 (totient, totient', totient'')
import Test.Hspec

main :: IO ()
main = hspec $ do
  describe "Question 34" $ do
    it "Determines that 10 has four coprimes." $
       totient 10 `shouldBe` 4

    it "Determines that 10 has four coprimes." $
       totient' 10 `shouldBe` 4

    it "Determines that 10 has four coprimes." $
       totient'' 10 `shouldBe` 4

    it "Determines that one has one coprime." $
       totient'' 1 `shouldBe` 1
