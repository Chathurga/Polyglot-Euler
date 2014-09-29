-- You could do this by reading in Integers, summing them, converting the
--   number to a String and print the first 10 characters
-- But I wanted a way that didn't require support for nums of arbitrary size

import Data.Char (digitToInt)
import Data.Functor ((<$>))
import Data.List (transpose)

leading :: Int -> [[Int]] -> Int
leading n xss = iter (n+1) 0 (map sum xss)
  where iter 0 t _      = t `quot` 1000
        iter i t (s:xs) = iter (i-1) (t*10 + s) xs

process :: String -> Int
process = leading 10 . transpose . map (map digitToInt) . lines

main :: IO ()
main = process <$> readFile "../.data/eu013.txt" >>= print
