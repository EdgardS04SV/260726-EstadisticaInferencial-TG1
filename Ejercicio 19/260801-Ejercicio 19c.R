# ---------------------------------------------------------
# Ejercicio 6 (c)
# ---------------------------------------------------------

# Enunciado:
# Verifique el resultado del inciso (b) mediante una
# simulación en R con al menos 100 000 réplicas,
# empleando set.seed(2026).
#
# Compare la frecuencia relativa simulada con el valor
# teórico y comente.

# Distribución:
# Poisson.

# Justificación:
# En el inciso (b) se determinó que el número de tickets
# que llegan a la fila A durante 30 minutos sigue:
#
# X ~ Poisson(λ = 2)
#
# La simulación permitirá aproximar la probabilidad
# P(X ≥ 2) mediante frecuencias relativas.

# Parámetros
lambda <- 2
n_replicas <- 100000

# Fijar semilla para obtener resultados reproducibles
set.seed(2026)

# Simulación de 100 000 observaciones de una Poisson(2)
simulacion <- rpois(n = n_replicas,
                    lambda = lambda)

# Frecuencia relativa simulada de X ≥ 2
prob_simulada <- mean(simulacion >= 2)

# Probabilidad teórica
prob_teorica <- 1 - ppois(q = 1,
                          lambda = lambda)

# Mostrar resultados
prob_teorica
prob_simulada

# Diferencia absoluta
abs(prob_teorica - prob_simulada)

# Interpretación:
# La probabilidad simulada debe ser muy cercana a la
# probabilidad teórica. Las pequeñas diferencias se deben
# al azar inherente al proceso de simulación.
#
# A medida que aumenta el número de réplicas, la frecuencia
# relativa converge hacia la probabilidad teórica
# (Ley de los Grandes Números).