-- I don't often use the list comprehension syntax but it fits here
-- You could also use filter (\x -> etc) [0..999]

main = print . sum $ [x | x <- [0..999], x `mod` 3 == 0 || x `mod` 5 == 0]
