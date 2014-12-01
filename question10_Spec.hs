module Question10_Spec where

import Question10 (encode, encode')
import Test.Hspec

main :: IO ()
main = hspec $ do
  describe "Question 10" $ do
    it "Generates run-length encoding of a list." $
       encode ['a', 'a', 'a', 'a', 'b', 'c', 'c', 'a', 'a', 'd', 'e', 'e', 'e', 'e']
        `shouldBe` [(4,'a'), (1,'b'), (2,'c'), (2,'a'), (1,'d'), (4,'e')]

    it "Generates run-length encoding of a list." $
       encode' ['a', 'a', 'a', 'a', 'b', 'c', 'c', 'a', 'a', 'd', 'e', 'e', 'e', 'e']
        `shouldBe` [(4,'a'), (1,'b'), (2,'c'), (2,'a'), (1,'d'), (4,'e')]
