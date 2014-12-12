module Question64_Spec where

import Question55 (BTree (..))
import Question64 (layout')
import Test.Hspec

main :: IO ()
main = hspec $ do
  describe "Question 64" $ do
    describe "layout" $ do
      {-
      it "Plots an empty BTree." $
         layout Empty `shouldBe` Empty
      -- Wow. The compiler even complains about this test. Hmph.
      -}
      it "Plots a BTree of one element." $
         layout' (Branch 'a' Empty Empty) `shouldBe` Branch ('a',(1,1)) Empty Empty

      it "Plots a BTree of two elements." $
         layout' (Branch 'a'
                         (Branch 'b' Empty Empty)
                         Empty) `shouldBe` Branch ('a',(2,1))
                                                  (Branch ('b',(1,2)) Empty Empty)
                                                  Empty

      it "Plots a BTree of three elements." $
         layout' (Branch 'a'
                         (Branch 'b' Empty Empty)
                         (Branch 'c' Empty Empty)) `shouldBe` Branch ('a',(2,1))
                                                                     (Branch ('b',(1,2)) Empty Empty)
                                                                     (Branch ('c',(3,2)) Empty Empty)

      it "Plots a BTree's nodes with coordinates." $ do
         --   1 23 456789A B C
         -- 1          n _
         --           /   \_
         -- 2      __k     _ u
         --      _/  \   _/
         -- 3   c_    m p
         --    /  \_     \_
         -- 4 a     h      s
         --         /     /
         -- 5      g     q
         --       /
         -- 6    e
         let tree = Branch 'n'
                           (Branch 'k'
                                   (Branch 'c'
                                           (Branch 'a' Empty Empty)
                                           (Branch 'h'
                                                   (Branch 'g'
                                                           (Branch 'e' Empty Empty)
                                                           Empty
                                                   )
                                                   Empty
                                           )
                                   )
                                   (Branch 'm' Empty Empty)
                           )
                           (Branch 'u'
                                   (Branch 'p'
                                           Empty
                                           (Branch 's'
                                                   (Branch 'q' Empty Empty)
                                                   Empty
                                           )
                                   )
                                   Empty
                           )
         layout' tree `shouldBe` Branch ('n',(8,1))
                                        (Branch ('k',(6,2))
                                                (Branch ('c',(2,3))
                                                        (Branch ('a',(1,4)) Empty Empty)
                                                        (Branch ('h',(5,4))
                                                                (Branch ('g',(4,5))
                                                                        (Branch ('e',(3,6)) Empty Empty)
                                                                        Empty)
                                                                Empty))
                                                (Branch ('m',(7,3)) Empty Empty))
                                        (Branch ('u',(12,2))
                                                (Branch ('p',(9,3))
                                                        Empty
                                                        (Branch ('s',(11,4))
                                                                (Branch ('q',(10,5))
                                                                        Empty
                                                                        Empty)
                                                                Empty))
                                                Empty)
