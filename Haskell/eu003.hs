sqrtInt :: Int -> Int
sqrtInt = floor . sqrt . fromIntegral

primes :: [Int]
primes = 2 : [x | x <- [3, 5..]
                , and [x `rem` y /= 0 | y <- takeWhile (<= sqrtInt x) primes]]

factorize :: Int -> [Int] -> Int
factorize n (p:ps)
  | n == p = p
  | n `rem` p == 0 = factorize (n `quot` p) ps
  | otherwise = factorize n ps

main :: IO ()
main = print (factorize 600851475143 primes)
