module Day1Bonus
  ( findFirstDuplicateFrequency,
  day2
  ) where

import Day1
import Data.Set as Set

day2 :: IO String
day2 = do
  stringInputs <- getInputs
  let frequencyChanges = Prelude.map parseString stringInputs
      duplicatedFrequency = findFirstDuplicateFrequency frequencyChanges
  return $ show $ duplicatedFrequency

findFirstDuplicateFrequency :: [Int] -> Int
findFirstDuplicateFrequency frequencyChanges = do
  let cycylingCHanges = cycle frequencyChanges
  oscilate cycylingCHanges 0 (Set.singleton 0) 0

oscilate :: [Int] -> Int -> Set Int -> Int ->Int
oscilate changes iterator occuredFrequencies currentFrequency = do
  let newFrequency = currentFrequency + changes !! iterator
  if Set.member newFrequency occuredFrequencies
    then newFrequency
    else do
      let newSet = Set.insert newFrequency occuredFrequencies
      oscilate changes (iterator +1) newSet newFrequency
