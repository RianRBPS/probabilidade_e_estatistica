# Definindo as probabilidades e os pagamentos correspondentes
probabilidades <- c(8/10, 1/10, 8/100, 2/100)
pagamentos <- c(0, 500, 4500, 9500)  # Pagamentos após a dedução de 500 reais

# Calculando o valor esperado do pagamento pela seguradora
valor_esperado_pagamento <- sum(probabilidades * pagamentos)

# Lucro desejado
lucro_desejado <- 100

# Calculando o prêmio total
premio_total <- valor_esperado_pagamento + lucro_desejado
premio_total
