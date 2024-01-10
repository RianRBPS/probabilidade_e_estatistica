#A duração de certo tipo de condensador tem distribuição exponencial com média de 200 horas. Qual a proporção de condensadores que duram:

# Definindo a taxa lambda com o inverso da média
lambda <- 1 / 200

#a) menos de 100 horas?
prob_less_100 <- pexp(100, rate = lambda)
cat("a) Probabilidade de menos de 100 horas:", prob_less_100, "\n")

#b) mais de 500 horas?
prob_more_500 <- 1 - pexp(500, rate = lambda)
cat("b) Proporção de condensadores que duram mais de 500 horas:", prob_more_500, "\n")

#c) entre 200 e 400 horas?
prob_between_200_400 <- pexp(400, rate = lambda) - pexp(200, rate = lambda)
cat("c) Proporção de condensadores que duram entre 200 e 400 horas:", prob_between_200_400, "\n")
