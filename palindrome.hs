isPalindrome :: String -> Bool
isPalindrome "" = True
isPalindrome [_] = True
palindrome (x:xs) = (x==last xs) && palindrome (init xs) 