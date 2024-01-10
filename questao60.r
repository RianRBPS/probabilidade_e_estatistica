#Seja X uma variável com distribuição Normal de média 5 e desvio padrão 1. Calcule:
library(stats)
#https://www.geeksforgeeks.org/r-statistics/

# Média e desvio padrão da distribuição Normal
mu <- 5
sigma <- 1

#a) P(X ≤ 7).
prob_X_leq_7 <- pnorm(7, mean = mu, sd = sigma)
cat("P(X ≤ 7) =", prob_X_leq_7,"\n")


#b) P(4 ≤ X).
prob_4_geq_X <- 1 - pnorm(4, mean = mu, sd = sigma)
cat("P(4 ≤ X) =", prob_4_geq_X,"\n")


#c) O valor x, tal que P(X > x) = 0, 01.
x_for_1_percent <- qnorm(0.99, mean = mu, sd = sigma)
cat("P(X > x) = 0,01, então x =", x_for_1_percent,"\n")


#d) O número a tal que P(5 − a ≤ X ≤ 5 + a) = 0, 95.
a_for_95_percent <- qnorm(0.975, mean = mu, sd = sigma) - 5
cat("P(5 - a ≤  X ≤ 5 + a) = 0,95, então a -", a_for_95_percent,"\n")
