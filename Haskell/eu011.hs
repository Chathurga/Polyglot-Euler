import Control.Arrow ((***))
import Control.Monad (guard)
import Data.Functor ((<$>))
import Data.Maybe (mapMaybe)

(!!!) :: [[a]] -> (Int, Int) -> a
m !!! (i,j) = (m !! i) !! j

solve :: [[Int]] -> Int
solve grid = foldl (maxProd grid n) 0 points
  where n = length grid
        points = [(i,j) | i <- [0..n-1], j <- [0..n-1]]

maxProd :: [[Int]] -> Int -> Int -> (Int, Int) -> Int
maxProd grid n acc p@(i,j) = foldl max acc (mapMaybe try moves)
  where try m@(x,y) = guard (i+x*3 < n && j+y*3 < n && j+y*3 > 0) >> adjProd m
        adjProd (x,y) = Just . product . map (grid !!!) . take 4
                      $ iterate ((+x) *** (+y)) p

moves :: [(Int, Int)]
moves = [(1, -1), (0, 1), (1, 0), (1, 1)]

process :: String -> Int
process = solve . map (map read . words) . lines

main :: IO ()
main = process <$> readFile "../.data/eu011.txt" >>= print
