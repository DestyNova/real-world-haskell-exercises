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

  describe "part 2 ex5" $ do
    it "rejects non-palindrome" $
      isPalindrome "cat" `shouldBe` False
    it "accepts palindrome" $
      isPalindrome "rotavator" `shouldBe` True

  describe "part 2 ex6" $
    it "sorts a list of lists" $
      sortByLength ["cat", "a", "bratwurst", "suspects"] `shouldBe` ["a", "cat", "suspects", "bratwurst"]

  describe "part 2 ex7" $
    it "intersperses" $
      intersperse ',' ["foo","bar","baz","quux"] `shouldBe` "foo,bar,baz,quux"

  describe "part 2 ex8" $
    it "counts height" $
      height (Node "x" Empty (Node "y" Empty Empty)) `shouldBe` 2

  describe "part 2 ex9" $ do
    it "detects left" $
      calcDirection (3,0) (6,5) (0,3) `shouldBe` DirLeft
    it "detects right" $
      calcDirection (3,0) (6,5) (8,2) `shouldBe` DirRight
    it "detects forward straight" $
      calcDirection (3,0) (6,5) (9,10) `shouldBe` DirStraight
    it "detects backward straight" $
      calcDirection (3,0) (6,5) (3,0) `shouldBe` DirStraight
