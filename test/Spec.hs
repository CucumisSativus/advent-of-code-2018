import Test.Hspec
import Control.Exception (evaluate)
import Day1
import Day1Bonus

main :: IO ()
main = hspec $ do
  describe "Day 1" $ do
    it "parses string correclty" $ do
      Day1.parseString "+3" `shouldBe` (3 :: Int)
      Day1.parseString "-3" `shouldBe` (-3 :: Int)
  describe "Day1 bonus" $ do
    it "finds first duplicate frequency" $ do
      Day2.findFirstDuplicateFrequency [1, -1] `shouldBe` (0 :: Int)
      Day2.findFirstDuplicateFrequency [3, 3, 4, -2, -4] `shouldBe` (10 :: Int)
      Day2.findFirstDuplicateFrequency [-6, 3, 8, 5, -6] `shouldBe` (5 :: Int)
      Day2.findFirstDuplicateFrequency [7, 7, -2, -7, -4] `shouldBe` (14 :: Int)
