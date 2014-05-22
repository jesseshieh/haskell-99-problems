pack :: (Eq a) => [a] -> [[a]]
pack [] = []
pack [a] = [[a]]
pack (first:rest) = let packedRest = (pack rest) in
  if (head (head packedRest)) == first then
    ((first:(head packedRest)):(tail packedRest))
  else
    [[first]] ++ packedRest

main = do
  putStrLn $ show $ pack ['a', 'a', 'a', 'a', 'b', 'c', 'c', 'a', 'a', 'd', 'e', 'e', 'e', 'e']
