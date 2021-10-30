module Ch3Spec (spec) where

import Ch3
import Test.Hspec

-- tests
spec :: Spec
spec = do
  describe "ex1" $
    it "converts a simple list" $
      fromList (Cons 'w' (Cons 'a' (Cons 't' Nil))) `shouldBe` "wat"
  describe "part 2 ex1" $
    it "counts properly" $
      countElems "wat" `shouldBe` 3
  describe "part 2 ex3" $
    it "calculates the mean" $
      calcMean [4,8,12] `shouldBe` 8
  describe "part 2 ex4" $
    it "palindromifies" $
      palindromify "cat" `shouldBe` "cattac"


