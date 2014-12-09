module Question49_Spec where

import Question49 (gray, gray')
import Test.Hspec

main :: IO ()
main = hspec $ do
  describe "Question 49" $ do
    it "Gray 1 returns the 1-bit Gray code." $
       gray 1 `shouldBe` ["0","1"]

    it "Gray 2 returns the 2-bit Gray code." $
       gray 2 `shouldBe` ["00","01","10","11"]

    it "Gray 3 returns the 3-bit Gray code." $
       gray 3 `shouldBe` ["000","001","010","011","100","101","110","111"]

    it "Gray 1 returns the 1-bit Gray code." $
       gray' 1 `shouldBe` ["0","1"]

    it "Gray 2 returns the 2-bit Gray code." $
       gray' 2 `shouldBe` ["00","10","01","11"]

    it "Gray 3 returns the 3-bit Gray code." $
       gray' 3 `shouldBe` ["000","100","010","110","001","101","011","111"]

