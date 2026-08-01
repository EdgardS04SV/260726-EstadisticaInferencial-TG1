# ---------------------------------------------------------
# Ejercicio 20d
# ---------------------------------------------------------

# Enunciado:
# En una hora reciente se registraron 15 rechazos.
# Calcule la probabilidad de observar 15 o más rechazos:
#
# 1. Bajo la tasa nominal p = 0.02.
# 2. Bajo una tasa alternativa p = 0.03.
#
# Discuta cuál de las dos hipótesis es más compatible
# con la observación.

# Distribución:
# Binomial (aproximación mediante Poisson).

# Justificación:
# El número de rechazos sigue exactamente una distribución
# Binomial, ya que existen 500 solicitudes independientes
# y cada una tiene una probabilidad constante de ser
# rechazada.
#
# También puede aproximarse mediante Poisson, pero como
# el enunciado no lo solicita explícitamente, se utilizará
# la distribución exacta.

# ---------------------------------------------------------
# Hipótesis 1: tasa nominal
# ---------------------------------------------------------

# Parámetros:
# n = 500
# p = 0.02

# Variable aleatoria:
# X ~ Binomial(n = 500, p = 0.02)

# Probabilidad solicitada:
# P(X ≥ 15)

prob_nominal <- 1 - pbinom(q = 14,
                           size = 500,
                           prob = 0.02)

# ---------------------------------------------------------
# Hipótesis 2: tasa alternativa
# ---------------------------------------------------------

# Parámetros:
# n = 500
# p = 0.03

# Variable aleatoria:
# X ~ Binomial(n = 500, p = 0.03)

# Probabilidad solicitada:
# P(X ≥ 15)

prob_alternativa <- 1 - pbinom(q = 14,
                               size = 500,
                               prob = 0.03)

# Mostrar resultados
prob_nominal
prob_alternativa

# Tabla comparativa
resultados <- data.frame(
  Hipotesis = c("p = 0.02",
                "p = 0.03"),
  Probabilidad = round(c(prob_nominal,
                         prob_alternativa), 6)
)

resultados

# Interpretación:
# Si la probabilidad bajo una hipótesis es mayor,
# significa que observar 15 o más rechazos es más
# compatible con esa hipótesis.
#
# La hipótesis cuya probabilidad sea más alta explica
# mejor la observación realizada.