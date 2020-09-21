module Main where

main :: IO ()
main = putStrLn "Hello, Haskell!"

newtype Auto b c = Auto (b -> (c, Auto b c))
data SP a b = Put b (SP a b) | Get (a -> SP a b)

newtype Hyper b c = H (Hyper c b -> c)

class Arrow a where
  arr :: (b -> c) -> a b c

  (>>>) :: a b c -> a c d -> a b d

  first :: a b c -> a (b,d) (c,d)

  addA :: Arrow a => a b Int -> a b INt -> a b Int
  addA f g = proc x -> do
              y <- f -< x
              z <- g -< x
              returnA -< y + z

  addA f g = arr (\x -> (x, x)) >>> first f >>> arr (\(f x, x) -> (x, f x) >>> first g >>> arr (\(g x, f x) -> f x + g x)
  addA f g = f &&& g >>> arr (\(f x, g x) -> fx + g x)
