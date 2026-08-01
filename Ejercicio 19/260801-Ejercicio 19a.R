# ---------------------------------------------------------
# Ejercicio 19a
# ---------------------------------------------------------

# Enunciado:
# Un sistema de tickets recibe dos flujos independientes:
#
# • Cola A (prioridad alta): promedio de 4 tickets por hora.
# • Cola B (prioridad baja): promedio de 6 tickets por hora.
#
# Calcule la probabilidad de que en una hora lleguen
# exactamente 3 tickets a la cola A y exactamente
# 8 tickets a la cola B.

# Distribución:
# Poisson.

# Justificación:
# Cada cola representa un proceso independiente de llegada
# de eventos (tickets) durante un intervalo fijo de tiempo
# (1 hora), con una tasa promedio conocida y constante.
# Por ello, el número de tickets en cada cola sigue una
# distribución de Poisson.
#
# Como ambos procesos son independientes, la probabilidad
# conjunta es el producto de las probabilidades individuales.

# Variables aleatorias:
#
# A = Número de tickets de prioridad alta.
# A ~ Poisson(λ = 4)
#
# B = Número de tickets de prioridad baja.
# B ~ Poisson(λ = 6)

# Probabilidad solicitada:
# P(A = 3 y B = 8)

# Funciones utilizadas:
# dpois(): Probabilidad puntual de una distribución Poisson.
#
# Como A y B son independientes:
#
# P(A = 3 y B = 8) =
# P(A = 3) × P(B = 8)

# Código en R
prob_A <- dpois(x = 3,
                lambda = 4)

prob_B <- dpois(x = 8,
                lambda = 6)

prob_conjunta <- prob_A * prob_B

# Mostrar resultados
prob_A
prob_B
prob_conjunta

# Interpretación:
# El resultado representa la probabilidad de que,
# durante una misma hora, lleguen exactamente
# 3 tickets a la cola A y exactamente 8 tickets
# a la cola B de forma simultánea.