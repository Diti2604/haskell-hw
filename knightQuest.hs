type KnightPos = (Int, Int)

moveKnight :: KnightPos -> [KnightPos]
moveKnight (x, y) = [(x', y') | (xm, ym) <- knightMoves,
                                let (x', y') = (x + xm, y + ym), x' `elem` [1..8], y' `elem` [1..8]]

knightMoves :: [(Int, Int)]
knightMoves = [(x, y) | x <- [-2..2], y <- [-2..2], (abs x) + (abs y) == 3]

canMove :: Int -> KnightPos -> KnightPos -> Bool
canMove 0 dest origin = dest == origin
canMove moves dest origin = any (canMove (moves - 1) dest) (moveKnight origin)

in3 :: KnightPos -> [KnightPos]
in3 start = concatMap moveKnight (concatMap moveKnight (moveKnight start))

canReachIn3 :: KnightPos -> KnightPos -> Bool
canReachIn3 start end = end `elem` in3 start
