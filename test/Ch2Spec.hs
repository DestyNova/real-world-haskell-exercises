module Ch2Spec (spec) where

import Ch2
import Test.Hspec
import Control.Exception

-- tests
spec :: Spec
spec = do
  describe "ex2" $ do
    it "works for expected input" $ lastButOne [1,2,3] `shouldBe` 2
    it "dies for bad input" $ evaluate (lastButOne [1]) `shouldThrow` anyErrorCall
