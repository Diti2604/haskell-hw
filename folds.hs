foldl' :: (b -> a -> b) -> b -> [a] -> b
foldl' _ acc []     = acc
foldl' f acc (x:xs) = let acc' = f acc x in acc' `seq` foldl' f acc' xs

foldr' :: (a -> b -> b) -> b -> [a] -> b
foldr' _ acc []     = acc
foldr' f acc (x:xs) = f x $! foldr' f acc xs
