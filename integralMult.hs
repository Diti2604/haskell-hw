mult' :: Integral a => a-> a-> a
mult' _ 0 = 0
mult' 0 _ = 0
mult' x y = x +  mult' x (y-1)