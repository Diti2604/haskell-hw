myAny :: [a] -> (a -> Bool) -> Bool
myAny xs f = foldr (\x acc -> f x || acc) False xs
