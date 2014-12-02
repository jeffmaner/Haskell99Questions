module Question14_Spec where

import Question14 (dupli, dupli', dupli'', dupli''')
import Test.Hspec

main :: IO ()
main = hspec $ do
  describe "Question 14" $ do
    it "Duplicates the elements of a list." $
       dupli [1,2,3] `shouldBe` [1,1,2,2,3,3]

    it "Duplicates the elements of a list." $
       dupli' [1,2,3] `shouldBe` [1,1,2,2,3,3]

    it "Duplicates the elements of a list." $
       dupli'' [1,2,3] `shouldBe` [1,1,2,2,3,3]

    it "Duplicates the elements of a list." $
       dupli''' [1,2,3] `shouldBe` [1,1,2,2,3,3]

