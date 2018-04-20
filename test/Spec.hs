{-# OPTIONS_GHC -F -pgmF htfpp #-}

import Test.Framework

import Lib

test_empty = assertEqual "" (reverseLines "")
test_oneLine = assertEqual "123\n" (reverseLines "321\n")
test_multipleLines = assertEqual "123\nabc\n" (reverseLines "321\ncba\n")

main :: IO ()
main = htfMain htf_thisModulesTests
