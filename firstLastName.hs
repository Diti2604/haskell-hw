name :: String -> String -> String
name "" (x:_) = "" 
name (x:_) "" = ""
name str str1 = [head str] ++ "." ++ [head str1]
