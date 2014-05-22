add1 :: Integer -> a -> Integer
add1 x y = x + 1

myLength :: [a] -> Integer
myLength list = foldl add1 0 list

pack :: (Eq a) => [a] -> [[a]]
pack [] = []
pack [a] = [[a]]
pack (first:rest) = let packedRest = (pack rest) in
  if (head (head packedRest)) == first then
    ((first:(head packedRest)):(tail packedRest))
  else
    [[first]] ++ packedRest

encode :: (Eq a) => [a] -> [(Integer,a)]
encode list = map (\x -> ((myLength x),(head x))) (pack list)

main = do
  putStrLn $ show $ encode "aaaabccaadeeee"
