
permuta::[Char]->[Char]
permuta [] = []
permuta (l:[]) = [l]
permuta (l:lt)
	| even(length lt) = [l] ++ (permuta lt)
	| otherwise = [head lt] ++ [l] ++ (permuta (tail lt))

main::IO()
main = do
	s <- getLine
