squareRoot :: Integer -> Integer
squareRoot = floor . sqrt . fromIntegral

primes :: [Integer]
primes = 2
       : [x | x <- [3,5..]
            , and [x `rem` y /= 0 | y <- takeWhile (<= squareRoot x) primes]]


factorize :: Integer -> [Integer] -> Integer
factorize n (p:ps)
  | n == p = p
  | n `rem` p == 0 = factorize (n `quot` p) ps
  | otherwise = factorize n ps

n = 600851475143
main = print (factorize n primes)
