dec :: Int -> Int -> [Int]
dec h l = [h, h-1..l]

main :: IO ()
main = print . head $ [a*b*c | c <- dec 997 3, b <- dec (1000-c-1) 2
                             , let a = 1000-b-c, a^2 + b^2 == c^2]
