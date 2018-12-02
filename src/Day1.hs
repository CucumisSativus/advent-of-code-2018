module Day1
    ( parseString,
    handleFrequency,
    program
    ) where

parseString :: String -> Int
parseString ('+' : theNumber) = read theNumber :: Int
parseString negativeNumber = read negativeNumber :: Int

handleFrequency :: [Int] -> Int
handleFrequency changes = foldl (+) 0 changes

getInputs :: IO [String]
getInputs = readInput []

program :: IO String
program = do
  stringInputs <- getInputs
  let frequencyChanges = map parseString stringInputs
      frequency = handleFrequency frequencyChanges
  return $ show $ frequency
      
readInput :: [String] -> IO [String]
readInput acc = do
  line <- getLine
  if null line
    then return acc
    else do
      readInput  $ acc ++ [line]
