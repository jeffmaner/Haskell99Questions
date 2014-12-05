module Question31_Spec where

import Question31 (isPrime', isPrime'')
import Test.Hspec

main :: IO ()
main = hspec $ do
  describe "Question 31" $ do
    it "Determines that seven is prime." $
       isPrime' 7 `shouldBe` True

    it "Determines that six is not prime." $
       isPrime' 6 `shouldBe` False

    it "Determines that seven is prime." $
       isPrime'' 7 `shouldBe` True

    it "Determines that six is not prime." $
       isPrime'' 6 `shouldBe` False

