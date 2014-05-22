isPalindrome :: Eq a => [a] -> Bool
isPalindrome list = list == (reverse list)

main = do
  putStrLn $ show $ isPalindrome "madamimadam"
  putStrLn $ show $ isPalindrome [1,2,3]
