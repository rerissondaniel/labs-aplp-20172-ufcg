import Data.List(sort)

eh_permutacao::[Char]->[Char]->Bool
eh_permutacao s1 s2 = sort s1 == sort s2

main::IO()
main = do
	s1 <- getLine
	s2 <- getLine
	print(eh_permutacao s1 s2)
