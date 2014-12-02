module Question15_Spec where

import Question15 (repli, repli', repli'')
import Test.Hspec

main :: IO ()
main = hspec $ do
  describe "Question 15" $ do
    it "Replicates the elements of a list n times." $
       repli "abc" 3 `shouldBe` "aaabbbccc"

    it "Replicates the elements of a list n times." $
       repli' "abc" 3 `shouldBe` "aaabbbccc"

    it "Replicates the elements of a list n times." $
       repli'' "abc" 3 `shouldBe` "aaabbbccc"
