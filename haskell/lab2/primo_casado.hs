eh_primo::Int->Int->Bool
eh_primo x 0 = True
eh_primo x 1 = True
eh_primo x y
    | (x `mod` y) == 0 = False
    | (y `mod` 2) == 0 = eh_primo x (y - 1)
    | otherwise = eh_primo x (y - 2)

eh_primo_casado::Int->Bool
eh_primo_casado n
	| eh_primo n (n - 1) == True && eh_primo (n + 2) (n + 1) == True = True
	| otherwise = False

main::IO()
main = do
    n <- getLine
    if eh_primo_casado(read n) then
    	print ("PRIMO CASADO!")
    else if eh_primo (read n) ((read n) - 1) then
    	print ("PRIMO!")
    else
