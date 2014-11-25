module Question04_Spec where

import Question04 (length', length'', length''', length'''')
import Test.Hspec

main :: IO ()
main = hspec $ do
  describe "Question 04" $ do
    it "Returns 3 when given [123,456,789]." $
       length' [123,456,789] `shouldBe` 3

    it "Returns 13 when given \"Hello, World!\"." $
       length' "Hello, World!" `shouldBe` 13

    it "Returns 3 when given [123,456,789]." $
       length'' [123,456,789] `shouldBe` 3

    it "Returns 13 when given \"Hello, World!\"." $
       length'' "Hello, World!" `shouldBe` 13

    it "Returns 3 when given [123,456,789]." $
       length''' [123,456,789] `shouldBe` 3

    it "Returns 13 when given \"Hello, World!\"." $
       length''' "Hello, World!" `shouldBe` 13

    it "Returns 3 when given [123,456,789]." $
       length'''' [123,456,789] `shouldBe` 3

    it "Returns 13 when given \"Hello, World!\"." $
       length'''' "Hello, World!" `shouldBe` 13
