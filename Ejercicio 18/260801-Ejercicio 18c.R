# ---------------------------------------------------------
# Ejercicio 18c
# ---------------------------------------------------------

# Enunciado:
# Se observaron 6 fallas efectivas durante el año.
# Calcule la probabilidad de observar 6 o más fallas:
#
# 1. Bajo el supuesto contractual (p = 0.005).
# 2. Bajo el supuesto alternativo (p = 0.01).
#
# Discuta si la evidencia observada respalda una revisión
# del contrato.

# Distribución:
# Binomial (aproximación mediante Poisson).

# Justificación:
# El número de fallas puede modelarse exactamente mediante
# una distribución Binomial. Sin embargo, debido a que
# n = 400 es grande y p es pequeño, también puede emplearse
# la aproximación de Poisson.

# ---------------------------------------------------------
# Supuesto contractual
# ---------------------------------------------------------

# Parámetros:
# n = 400
# p = 0.005
# λ = n × p = 2

# Probabilidad solicitada:
# P(X ≥ 6)

# Solución exacta (Binomial)
prob_binomial_005 <- 1 - pbinom(q = 5,
                                size = 400,
                                prob = 0.005)

# Aproximación mediante Poisson
prob_poisson_005 <- 1 - ppois(q = 5,
                              lambda = 2)

# ---------------------------------------------------------
# Supuesto alternativo
# ---------------------------------------------------------

# Parámetros:
# n = 400
# p = 0.01
# λ = n × p = 4

# Probabilidad solicitada:
# P(X ≥ 6)

# Solución exacta (Binomial)
prob_binomial_001 <- 1 - pbinom(q = 5,
                                size = 400,
                                prob = 0.01)

# Aproximación mediante Poisson
prob_poisson_001 <- 1 - ppois(q = 5,
                              lambda = 4)

# Mostrar resultados
prob_binomial_005
prob_poisson_005

prob_binomial_001
prob_poisson_001

# Interpretación:
# Bajo el supuesto contractual (p = 0.005), observar
# seis o más fallas tiene una probabilidad relativamente
# baja, por lo que sería un evento poco frecuente.
#
# Bajo el supuesto alternativo (p = 0.01), observar
# seis o más fallas es considerablemente más probable.
#
# Si la probabilidad bajo el supuesto contractual es muy
# pequeña y la observación real fue de seis fallas, la
# evidencia sugiere que la tasa de fallas podría ser mayor
# a la establecida en el contrato, lo que justificaría
# revisar dicho supuesto o realizar un análisis estadístico
# más formal (por ejemplo, una prueba de hipótesis).