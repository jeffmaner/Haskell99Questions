module Question26_Spec where

import Data.List (nub)
import Question26 (combinations, combinations')
import Test.Hspec

main :: IO ()
main = hspec $ do
  describe "Question 26" $ do
    it "Correctly indicates the combinations of two of a list of two." $
       combinations 2 "ab" `shouldBe` ["ab","ba"]

    it "Correctly indicates the combinations of two of a list of three." $
       combinations 2 "abc" `shouldSatisfy` ((6==) . length . nub)

    -- The following test runs indefinitely for my solution.
    it "Generates 220 combinations of three of the elements of the list." $
       combinations' 3 "abcdefghijkl" `shouldSatisfy` ((220==) . length . nub)

    it "Correctly indicates the combinations of two of a list of two." $
       combinations' 2 "ab" `shouldBe` ["ab","ba"]

    it "Correctly indicates the combinations of two of a list of three." $
       combinations' 2 "abc" `shouldSatisfy` ((6==) . length . nub)

