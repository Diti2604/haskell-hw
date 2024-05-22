sum' :: Num a => [a] -> a
sum' [] = 0
sum' xs = sum [x * x | x <- xs]
