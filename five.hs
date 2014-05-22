myReverse :: [a] -> [a]
myReverse [] = []
myReverse (first:rest) = (myReverse rest) ++ [first]

main = do
  putStrLn $ show $ myReverse [1,2,3,4]
