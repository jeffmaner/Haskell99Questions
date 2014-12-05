module Question28_Spec where

import Question28 (lfsort, lsort, lsort')
import Test.Hspec

main :: IO ()
main = hspec $ do
  describe "Question 28" $ do
    it "Sorts the list of lists ascendingly according to their lengths." $
       lsort ["abc","de","fgh","de","ijkl","mn","o"] `shouldBe` ["o","de","de","mn","abc","fgh","ijkl"]

    it "Sorts the list of lists ascendingly according to their lengths." $
       lsort' ["abc","de","fgh","de","ijkl","mn","o"] `shouldBe` ["o","de","de","mn","abc","fgh","ijkl"]

    it "Sorts the list of lists ascendingly according to the frequency of their lengths." $
       lfsort ["abc","de","fgh","de","ijkl","mn","o"] `shouldBe` ["ijkl","o","abc","fgh","de","de","mn"]

