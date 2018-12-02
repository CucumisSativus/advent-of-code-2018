import Test.Hspec
import Control.Exception (evaluate)
import Day1

main :: IO ()
main = hspec $ do
  describe "Day 1" $ do
    it "parses string correclty" $ do
      Day1.parseString "+3" `shouldBe` (3 :: Int)
      Day1.parseString "-3" `shouldBe` (-3 :: Int)
