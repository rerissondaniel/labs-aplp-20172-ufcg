verifica_colisao::Int->Int->Int->[Char]->Int->Int->Int->[Char]->Bool
verifica_colisao x1 y1 t1 "horizontal" x2 y2 t2 "horizontal" = (x1 + t1) >= x2 && (x1 + t1) <= (x2 + t2)
verifica_colisao x1 y1 t1 "horizontal" x2 y2 t2 "vertical" = (y1 >= y2 && y1 <= (y2 + t2)) && ((x2 <= x1) && (x1 + t1) >= x2)
verifica_colisao x1 y1 t1 "vertical" x2 y2 t2 "horizontal" = (x1 >= x2 && x1 <= (x2 + t2)) && ((y2 >= y1) && (y1 + t1) <= y2)
verifica_colisao x1 y1 t1 "vertical" x2 y2 t2 "vertical" = (y1 + t1) >= y2 && (y1 + t1) <= (y2 + t2)

main::IO()
main = do
	xn1 <- getLine
	yn1 <- getLine
	tn1 <- getLine
	posn1 <- getLine

	xn2 <- getLine
	yn2 <- getLine
	tn2 <- getLine
	posn2 <- getLine
