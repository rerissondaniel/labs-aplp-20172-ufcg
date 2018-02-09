div_proprios::Integer->[Integer]
div_proprios n =
    [x | x <- [1..n - 1], n `mod` x == 0]

eh_perfeito::Integer->Bool
eh_perfeito n =
    sum (div_proprios(n)) == n


main::IO()
main = do
    num <- getLine
    let n = read num
