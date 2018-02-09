calcula_preco::String->Double->Double
calcula_preco veiculo qtd
    | veiculo == "carro" = (5.0 + preco_pessoas)
    | veiculo == "van" = 15.0 + preco_pessoas
    | veiculo == "moto" = 2.0 + preco_pessoas
    | veiculo == "onibus" = 50.0 + preco_pessoas
    | veiculo == "bicicleta" = preco_pessoas
    where preco_pessoas = qtd * 1.5

main::IO()
main = do
    n <- getLine
    qtd <- readLn
    print(calcula_preco n qtd)
