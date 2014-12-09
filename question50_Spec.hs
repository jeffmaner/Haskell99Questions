module Question50_Spec where

import Question50 (huffman)
import Test.Hspec

main :: IO ()
main = hspec $ do
  describe "Question 50" $ do
    it "Returns the Huffman encoding of the symbols per the frequencies provided." $
       huffman [('a',45),('b',13),('c',12),('d',16),('e',9),('f',5)] `shouldBe` [('a',"0"),('b',"101"),('c',"100"),('d',"111"),('e',"1101"),('f',"1100")]

