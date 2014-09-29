sqrtInt :: Int -> Int
sqrtInt = floor . sqrt . fromIntegral

factors :: Int -> Int
factors x = half*2 + (if (rt^2 == x) then 1 else 0)
  where rt = sqrtInt x
        half = sum [1 | y <- takeWhile (< rt) [1..rt-1], x `rem` y == 0]

triangles :: [Int]
triangles = scanl1 (+) [1..]

main :: IO ()
main = print . head $ dropWhile ((< 500) . factors) triangles
