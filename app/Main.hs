module Main where

import Data.Function ((&))

import Lib

main :: IO ()
main = do
  content <- getContents
  putStrLn $ content & reverseLines
