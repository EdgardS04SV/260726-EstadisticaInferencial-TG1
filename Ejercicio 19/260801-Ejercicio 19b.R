# ---------------------------------------------------------
# Ejercicio 19b
# ---------------------------------------------------------

# Enunciado:
# Un ticket de la fila B llega a las 10:15 a.m.
# Calcule la probabilidad de que entre las 10:15 y las
# 10:45 a.m. lleguen al menos 2 tickets a la fila A,
# situación en la cual el ticket de B verá extendida
# su espera.

# Distribución:
# Poisson.

# Justificación:
# Se utiliza una distribución de Poisson porque se desea
# modelar el número de llegadas de tickets durante un
# intervalo fijo de tiempo (30 minutos), con una tasa
# promedio conocida y suponiendo que las llegadas son
# independientes.

# Variable aleatoria:
# X = Número de tickets que llegan a la fila A entre
# las 10:15 y las 10:45 a.m.
#
# La tasa de llegada es:
# λ = 4 tickets/hora
#
# Como el intervalo es de media hora:
#
# λ = 4 × (30/60) = 2 tickets

# Variable:
# X ~ Poisson(λ = 2)

# Probabilidad solicitada:
# P(X ≥ 2)

# Función utilizada:
# ppois(x, lambda)
#
# Como ppois() calcula P(X ≤ x), para obtener
# P(X ≥ 2) utilizamos el complemento:
#
# P(X ≥ 2) = 1 - P(X ≤ 1)

# Código en R
1 - ppois(q = 1,
          lambda = 2)

# Código equivalente
ppois(q = 1,
      lambda = 2,
      lower.tail = FALSE)

# Interpretación:
# El resultado representa la probabilidad de que,
# durante los 30 minutos posteriores a la llegada
# del ticket de prioridad baja, ingresen al menos
# dos nuevos tickets de prioridad alta, ocasionando
# que el ticket de la fila B deba esperar más tiempo
# antes de ser atendido.