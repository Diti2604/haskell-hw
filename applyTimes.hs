applyTimes :: (Eq a, Num a) => a -> (b -> b) -> b -> b
applyTimes 0 _ c = c
applyTimes d f e = f (applyTimes (d - 1) f e)