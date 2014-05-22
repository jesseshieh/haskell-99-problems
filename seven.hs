data NestedList a = Elem a | List [NestedList a]
flatten :: NestedList a -> [a]
flatten (Elem a) = [a]
flatten (List a) = foldl (++) [] (map flatten a)

main = do
  putStrLn $ show $ flatten (List [Elem 1, List [Elem 2, List [Elem 3, Elem 4], Elem 5]])
