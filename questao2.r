#Considere a variável aleatória T cuja distribuição de probabilidade é dada por

# Valores de T 2 3 4 5 6 7
valores_T <- c(2, 3, 4, 5, 6, 7)
# Probabilidades 1/10 1/10 4/10 2/10 1/10 1/10
probabilidades_T <- c(1/10, 1/10, 4/10, 2/10, 1/10, 1/10)
# Número de simulações
num_simulacoes <- 10000
# Simulação da variável aleatória T
simulacoes_T <- sample(valores_T, size = num_simulacoes, replace = TRUE, prob = probabilidades_T)

#a) P(T ≥ 6);
prob_a <- sum(simulacoes_T >= 6) / num_simulacoes
cat("a) PT(T ≥ 6) = ", prob_a, "\n")

#b) P(|T − 4| > 2);
# Na lista 2 está P(|T-4|>2), porém no gabarito da questão 2 o professor usa P(|T-4| >= 2)
prob_b <- sum(abs(simulacoes_T - 4) > 2) / num_simulacoes
cat("b) PT(|T - 4| > 2) =", prob_b, "\n")


#c) P(T ser um numero primo);
numeros_primos <- c(2, 3, 5, 7)
prob_c <- sum(simulacoes_T %in% numeros_primos) / num_simulacoes
cat("c) PT(T ser um numero primo) = ", prob_c, "\n")

#d) A esperança e a variância de T.
esperanca_T <-sum(valores_T * probabilidades_T)
cat("d) Esperança de T=", esperanca_T, "\n")

variancia_T <- sum((valores_T - esperanca_T)^2 * probabilidades_T)
cat("d) Variância de T=", variancia_T, "\n")
