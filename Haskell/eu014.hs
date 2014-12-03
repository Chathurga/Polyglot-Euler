import Data.List (foldl')
import Data.Map (Map)
import qualified Data.Map as Map

type Cache = Map Integer Int

collatz :: Integer -> Integer
collatz n = if even n then n `quot` 2 else 3*n + 1

-- Get the length of a collatz sequence beginning with x from a cache
-- Calculate the length and place it in the cache if missing
len :: Integer -> Cache -> (Int, Cache)
len 1 m = (1, m)
len x m = case Map.lookup x m of
  Nothing -> let (lp, m') = len (collatz x) m
             in  (lp+1, Map.insert x (lp+1) m')
  Just l  -> (l, m)

longest :: [Integer] -> Integer
longest = fst . snd . foldl f (Map.empty, (0, 0))
  where f (m, p@(_, l)) x = let (l', m') = len x m
                            in  (m', if l' > l then (x, l') else p)

main :: IO ()
main = print (longest [1,3..10^6-1])
