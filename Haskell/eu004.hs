-- You can get a list of digits by casting x to a String but that's slow

digitsRev :: Integral a => a -> [a]
digitsRev 0 = []
digitsRev x = let (q,r) = x `quotRem` 10 in r : digitsRev q

p :: Int -> Bool
p x = let ds = digitsRev x in ds == reverse ds

check :: Int -> Int -> Int -> Int
check x y a
  | xy < a = a
  | p xy = xy
  | otherwise = a
  where xy = x * y

domain :: [(Int, [Int])]
domain = [100..999] `zip` repeat [100..999]

main :: IO ()
main = print (foldr (\(x, ys) a -> foldr (check x) a ys) 0 domain)
