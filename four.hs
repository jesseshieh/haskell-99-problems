add1 :: Integer -> a -> Integer
add1 x y = x + 1

myLength :: [a] -> Integer
myLength list = foldl add1 0 list

main = do
  putStrLn $ show $ myLength "Hello, world!"
