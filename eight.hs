compress :: (Eq a) => [a] -> [a]
compress [] = []
compress [a] = [a]
compress (first:rest@(second:_)) = if (first == second) then
    (compress rest)
  else
    [first] ++ (compress rest)

main = do
  putStrLn $ show $ compress "aaaabccaadeeee"
