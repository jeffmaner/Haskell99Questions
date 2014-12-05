module Question38_Spec where

import Question34 (totient'')
import Question37 (totient')
import Test.Hspec

main :: IO ()
main = hspec $ do
  describe "Question 38" $ do
    it "Determines that 10090 has 4,032 coprimes." $
       totient' 10090 `shouldBe` 4032

    it "Determines that 10090 has 4,032 coprimes." $
       totient'' 10090 `shouldBe` 4032

-- Both are pretty speedy.

