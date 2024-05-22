abs'::(Num x, Ord x) => x -> x
abs' x 
  |  x >= 0 = x
  | otherwise = -x