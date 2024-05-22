mcCarthy' :: (Ord a, Num a) => a -> a
mcCarthy' x 
    | x > 100 = x - 10
    | otherwise = mcCarthy' (mcCarthy' (x + 11))

output :: [Integer]
output = map mcCarthy' [95..110]