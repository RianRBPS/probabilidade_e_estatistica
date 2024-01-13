# Definindo os parâmetros
n <- 10  # número total de betoneiras
p <- 0.15  # probabilidade de uma betoneira ser defeituosa

# Probabilidade de nenhuma betoneira defeituosa
# P(X = 0)
prob_nenhuma_defeituosa <- dbinom(0, n, p)

# Probabilidade de pelo menos uma betoneira defeituosa
# É o complemento da probabilidade de nenhuma defeituosa
# P(X > 0 ) = 1 - P(X = 0)
prob_pelo_menos_uma_defeituosa <- 1 - prob_nenhuma_defeituosa

# Probabilidade de no máximo uma betoneira defeituosa
# É a soma das probabilidades de nenhuma e uma defeituosa
# P(X <= 1) = P(X = 0) + P(X = 1)
prob_no_maximo_uma_defeituosa <- dbinom(0, n, p) + dbinom(1, n, p)

# Exibindo os resultados
cat("a) Probabilidade de nenhuma defeituosa: ", prob_nenhuma_defeituosa, "\n")
cat("b) Probabilidade de pelo menos uma defeituosa: ", prob_pelo_menos_uma_defeituosa, "\n")
cat("c) Probabilidade de no máximo uma defeituosa: ", prob_no_maximo_uma_defeituosa, "\n")
