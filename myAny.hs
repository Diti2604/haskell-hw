myAny :: (a -> Bool) -> [a] -> Bool
myAny _ []     = False
myAny b (x:xs) = b x || myAny b xs
