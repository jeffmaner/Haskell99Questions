module Question25_Spec where

import Data.List (nub, sort)
import Question25 (rndPermu, rndPermu')
import Test.Hspec

main :: IO ()
main = hspec $ do
  describe "Question 25" $ do
    it "Generates a random permutation of the elements of the list." $
       rndPermu' "abcdef" >>= (`shouldBe` "badcef")
       -- This is impossible to test this way, as I cannot predict what shouldBe!

    it "Returns a list as long as the list it was given." $
       rndPermu' "abcdef" >>= (`shouldSatisfy` ((6==) . length . nub))

    it "Returns only elements that were in the original list." $
       rndPermu' "abcdef" >>= (`shouldSatisfy` (("abcdef"==) . sort))
