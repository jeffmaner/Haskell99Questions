module Question41_Spec where

import Question41 (goldbachList, goldbachList', Result (..))
import Test.Hspec

main :: IO ()
main = hspec $ do
  describe "Question 41" $ do
    it "Returns a list of all even numbers between 9 and 20 and their Goldbach composition." $
        --goldbachList 9 20 `shouldBe` [(3,7),(5,7),(3,11),(3,13),(5,13),(3,17)]
        -- The specification actually asks for the even number as well as the
        -- Goldbach composition.
        goldbachList 9 20 `shouldBe` [ Result { rEven=10, rComposition=(3, 7) }
                                     , Result { rEven=12, rComposition=(5, 7) }
                                     , Result { rEven=14, rComposition=(3,11) }
                                     , Result { rEven=16, rComposition=(3,13) }
                                     , Result { rEven=18, rComposition=(5,13) }
                                     , Result { rEven=20, rComposition=(3,17) } ]
    it "Returns a list all even numbers between 4 and 3000 where both components of their Goldbach compositionare greater than 50." $
       -- Not sure why the example only goes to 2000. It starts at 4 instead of 2
       -- to avoid calling head on an empty list in goldbach.
        goldbachList' 4 3000 50 `shouldBe` [ Result { rEven= 992, rComposition=( 73, 919) }
                                           , Result { rEven=1382, rComposition=( 61,1321) }
                                           , Result { rEven=1856, rComposition=( 67,1789) }
                                           , Result { rEven=1928, rComposition=( 61,1867) }
                                           , Result { rEven=2078, rComposition=( 61,2017) }
                                           , Result { rEven=2438, rComposition=( 61,2377) }
                                           , Result { rEven=2512, rComposition=( 53,2459) }
                                           , Result { rEven=2530, rComposition=( 53,2477) }
                                           , Result { rEven=2618, rComposition=( 61,2557) }
                                           , Result { rEven=2642, rComposition=(103,2539) } ]
