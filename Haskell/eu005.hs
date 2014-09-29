main :: IO ()
main = print (foldl1 lcm [11..20])
