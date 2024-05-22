lengthOfInt' :: [a]-> Int
lengthOfInt' [] = 0
lengthOfInt' (_:xs) = 1 + lengthOfInt' xs 