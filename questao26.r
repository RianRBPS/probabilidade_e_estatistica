#26. Seja X uma variável que indica o número de parafusos defeituosos produzidos pela máquina A. Se a probabilidade desta máquina produzir um parafuso defeituoso é de 5%. Ao selecionar aleatoriamente dois parafusos, qual a probabilidade de ambos serem defeituosos? Ao selecionarmos 50 parafusos, qual é a E(X) e a Var(X)?


# Probabilidade de um parafuso ser defeituoso 
p_defeituoso <- 0.05

# Calculando a probabilidade de ambos os parafuos serem defeituosos 
prob_ambos_defeituosos <- dbinom(2, size = 2, prob = p_defeituoso)

# Para 50 parafusos, calculando E(X) e Var(X) (n = 50)
n_parafusos <- 50

# a) E(X)
E_X <- n_parafusos * p_defeituoso

Var_X <- n_parafusos * p_defeituoso * (1 - p_defeituoso)

# Imprimindo os resultados
cat("Probabilidade de ambos os parafusos serem defeituosos: ", prob_ambos_defeituosos, "\n")
cat("Expectativa (E(X)) para 50 parafusos: ", E_X, "\n")
cat("Variância (Var(X)) para 50 parafusos: ", Var_X, "\n")
