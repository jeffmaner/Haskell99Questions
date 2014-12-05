module Question32_Spec where

import Question32 (gcd', myGCD)
import Test.Hspec

main :: IO ()
main = hspec $ do
  describe "Question 32" $ do
    it "Determines nine to be the greatest common divisor of 36 and 63." $
       gcd' 36 63 `shouldBe` 9

    it "Determines three to be the greatest common divisor of -3 and -6." $
       gcd' (-3) (-6) `shouldBe` 3

    it "Determines three to be the greates common divisor of -3 and 6." $
       gcd' (-3) 6 `shouldBe` 3

    it "Determines nine to be the greatest common divisor of 36 and 63." $
       myGCD 36 63 `shouldBe` 9

    it "Determines three to be the greatest common divisor of -3 and -6." $
       myGCD (-3) (-6) `shouldBe` 3

    it "Determines three to be the greates common divisor of -3 and 6." $
       myGCD (-3) 6 `shouldBe` 3

