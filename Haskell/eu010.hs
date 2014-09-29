sqrtInt :: Int -> Int
sqrtInt = floor . sqrt . fromIntegral

primes :: [Int]
primes = 2 : [x | x <- [3, 5..]
                , and [x `rem` y /= 0 | y <- takeWhile (<= sqrtInt x) primes]]

main :: IO ()
main = print . sum $ takeWhile (< 2000000) primes
