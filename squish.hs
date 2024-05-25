squish :: [[a]] -> [a]
squish [] = []
squish (b:bs) = b ++ squish bs