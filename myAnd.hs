myAnd :: [Bool] -> Bool
myAnd ys = foldr (&&) True ys