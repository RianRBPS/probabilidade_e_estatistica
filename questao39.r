#39. Uma fábrica produz tecidos com média de 2,2 defeitos por jarda quadrada. Determine as seguintes probabilidades:

#Para resolver este problema, podemos assumir que o número de defeitos em uma jarda quadrada de tecido segue uma distribuição de Poisson, pois estamos lidando com a contagem de eventos (defeitos) que ocorrem numa área fixa (jarda quadrada).

# Média de defeitos por jarda quadrada
lambda <- 2.2

# a) Não mais de 4 defeitos numa jarda quadrada
p_a <- ppois(4, lambda)

# b) Nenhum defeito em duas jardas quadradas
# A média para duas jardas quadradas será o dobro
p_b <- ppois(0, 2 * lambda)

# c) Duas jardas quadradas cada uma com dois defeitos
# A probabilidade para uma jarda quadrada com dois defeitos
p_uma_jarda <- dpois(2, lambda)
# Como as jardas são independentes, multiplicamos as probabilidades
p_c <- p_uma_jarda * p_uma_jarda

# Imprimindo os resultados
cat("a) Probabilidade de não mais de 4 defeitos numa jarda quadrada: ", p_a, "\n")
cat("b) Probabilidade de nenhum defeito em duas jardas quadradas: ", p_b, "\n")
cat("c) Probabilidade de duas jardas quadradas cada uma com dois defeitos: ", p_c, "\n")
