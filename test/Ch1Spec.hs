module Ch1Spec (spec) where

import Test.Hspec

-- tests
spec :: Spec
spec = do
  describe "chapter 1" $ do
    it "does nothing" $ 1 `shouldBe` 1
