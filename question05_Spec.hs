module Question05_Spec where

import Question05 (reverse', reverse'', reverse''')
import Test.Hspec

main :: IO ()
main = hspec $ do
  describe "Question 05" $ do
    it "Returns \"!amanap ,lanac a ,nalp a ,nam A\" when given \"A man, a plan, a canal, panama!\"." $
       reverse' "A man, a plan, a canal, panama!" `shouldBe` "!amanap ,lanac a ,nalp a ,nam A"

    it "Returns [4,3,2,1] when given [1,2,3,4]." $
       reverse' [1,2,3,4] `shouldBe` [4,3,2,1]

    it "Returns \"!amanap ,lanac a ,nalp a ,nam A\" when given \"A man, a plan, a canal, panama!\"." $
       reverse'' "A man, a plan, a canal, panama!" `shouldBe` "!amanap ,lanac a ,nalp a ,nam A"

    it "Returns [4,3,2,1] when given [1,2,3,4]." $
       reverse'' [1,2,3,4] `shouldBe` [4,3,2,1]

    it "Returns \"!amanap ,lanac a ,nalp a ,nam A\" when given \"A man, a plan, a canal, panama!\"." $
       reverse''' "A man, a plan, a canal, panama!" `shouldBe` "!amanap ,lanac a ,nalp a ,nam A"

    it "Returns [4,3,2,1] when given [1,2,3,4]." $
       reverse''' [1,2,3,4] `shouldBe` [4,3,2,1]
