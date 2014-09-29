import Data.Char (digitToInt)
import Data.Functor ((<$>))

reduce :: Int -> [Int] -> Int
reduce a [] = a
reduce a (x:xs)
  | p > a = reduce p xs
  | otherwise = reduce a xs
  where p = product . take 13 $ xs

main :: IO ()
main = reduce 0 . map digitToInt . concat . lines
   <$> readFile "../.data/eu008.txt" >>= print
