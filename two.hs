myButLast :: [a] -> Maybe a
myButLast [a, b] = Just a
myButLast [a] = Nothing
myButLast a = myButLast (tail a)

main = do
  putStrLn $ show $ myButLast [1,2,3,4]
  putStrLn $ show $ myButLast ['a'..'z']
