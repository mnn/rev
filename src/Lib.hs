module Lib
    ( reverseLines
    ) where

import Data.Function ((&))
import Control.Arrow ((>>>))

reverseLines :: String -> String
reverseLines = lines >>> (map reverse) >>> unlines
