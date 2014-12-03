module Question24_Spec where

import Data.List (nub)
import Question24 (rndSelectR, rndSelectR')
import Test.Hspec

main :: IO ()
main = hspec $ do
  describe "Question 24" $ do
    it "Extracts six randomly selected elements from the list [1..49]." $
       rndSelectR 6 49 >>= (`shouldBe` [23,1,17,33,21,37])
       -- This is impossible to test this way, as I cannot predict what shouldBe!

    it "Extracts six randomly selected elements from the list [1..49]." $
       rndSelectR' 6 49 >>= (`shouldBe` [23,1,17,33,21,37])
       -- This is impossible to test this way, as I cannot predict what shouldBe!

    it "Extracts six distinct randomly selected elements from the list [1..49]." $
       rndSelectR 6 49 >>= (`shouldSatisfy` ((6==) . length . nub))

    it "Extracts six distinct randomly selected elements from the list [1..49]." $
       rndSelectR' 6 49 >>= (`shouldSatisfy` ((6==) . length . nub))

