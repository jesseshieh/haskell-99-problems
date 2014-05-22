elementAt :: [a] -> Integer -> a
elementAt list 0 = head list
elementAt (first:rest) i = elementAt rest (i - 1)

main = do
  putStrLn $ show $ elementAt "haskell" 5
