# ---------------------------------------------------------
# Ejercicio 20a
# ---------------------------------------------------------

# Enunciado:
# Un servicio web procesa 500 solicitudes por hora.
# Cada solicitud tiene una probabilidad del 2 % de ser
# rechazada por el firewall de forma independiente.
#
# Modele el número de rechazos y calcule P(X ≤ 5)
# empleando la distribución exacta.

# Distribución:
# Binomial.

# Justificación:
# Se utiliza una distribución Binomial porque existe un
# número fijo de ensayos (500 solicitudes), cada solicitud
# puede ser rechazada o aceptada, la probabilidad de rechazo
# permanece constante (p = 0.02) y las solicitudes son
# independientes.

# Variable aleatoria:
# X = Número de solicitudes rechazadas durante una hora.
#
# X ~ Binomial(n = 500, p = 0.02)

# Probabilidad solicitada:
# P(X ≤ 5)

# Función utilizada:
# pbinom(q, size, prob)
#
# pbinom() calcula probabilidades acumuladas del tipo:
# P(X ≤ q)

# Código en R
pbinom(q = 5,
       size = 500,
       prob = 0.02)

# Interpretación:
# El resultado representa la probabilidad de que,
# de las 500 solicitudes procesadas en una hora,
# como máximo 5 sean rechazadas por el firewall.