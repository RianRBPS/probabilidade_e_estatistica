#Se X tem distribuição binomial com n = 300 e p = 0, 2 calcule o valor das seguintes probabilidades:
#Sugestão: Use a aproximação da binomial pela normal)

# Parâmetros da distribuição binomial
n <- 300
p <- 0.2

# Calculando média e desvio padrão para a aproximação normal
mu <- n * p
sigma <- sqrt(n * p * (1- p))

#a) P[X > 55].
# Usando a normal padrão, ajustando para P(X > 55.5) para a correção de continuidade
prob_X_gt_55 <- 1 - pnorm(55.5, mean = mu, sd = sigma)
cat("a) P[X > 55] = ", prob_X_gt_55, "\n")

#b) P[58 < X < 61].
prob_X_58_to_61 <- pnorm(61, mean = mu, sd = sigma) - pnorm(58, mean = mu, sd = sigma)
cat("b) P[58 < X < 61] =", prob_X_58_to_61, "\n")

#c) P[X >= 70].
prob_X_ge_70 <- 1 - pnorm(70, mean = mu, sd = sigma)
cat("c) P[x >= 70] = ", prob_X_ge_70, "\n")
