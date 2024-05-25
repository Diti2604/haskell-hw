myFilter :: (a -> Bool) -> [a] -> [a]
myFilter b = foldr (\x acc -> if b x then x : acc else acc) []
