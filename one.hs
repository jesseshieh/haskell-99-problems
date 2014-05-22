myLast :: [a] -> a
myLast [element] = element
myLast (_:rest) = myLast rest

main = do
  putStrLn $ show $ myLast [1,2,3,4]
  putStrLn $ show $ myLast ['a','b','c']
