# ---------------------------------------------------------
# Ejercicio 20b
# ---------------------------------------------------------

# Enunciado:
# Calcule la misma probabilidad empleando la aproximación
# de Poisson. Justifique la aproximación en función de los
# valores de n y p.

# Distribución:
# Poisson (aproximación de la Binomial).

# Justificación:
# La distribución exacta es Binomial.
#
# Sin embargo, la aproximación mediante Poisson es adecuada
# porque:
#
# • El número de ensayos es grande: n = 500.
# • La probabilidad de rechazo es pequeña: p = 0.02.
# • λ = n × p = 500 × 0.02 = 10.
#
# Bajo estas condiciones, la Binomial puede aproximarse
# mediante una Poisson con λ = 10.

# Variable aleatoria:
# X = Número de solicitudes rechazadas en una hora.
#
# X ~ Poisson(λ = 10)

# Probabilidad solicitada:
# P(X ≤ 5)

# Función utilizada:
# ppois(q, lambda)
#
# ppois() calcula probabilidades acumuladas:
# P(X ≤ q)

# Código en R
ppois(q = 5,
      lambda = 10)

# (Opcional) Comparación con la distribución exacta
prob_binomial <- pbinom(q = 5,
                        size = 500,
                        prob = 0.02)

prob_poisson <- ppois(q = 5,
                      lambda = 10)

# Mostrar resultados
prob_binomial
prob_poisson

# Diferencia absoluta
abs(prob_binomial - prob_poisson)

# Interpretación:
# La probabilidad calculada mediante Poisson aproxima
# la obtenida con la distribución Binomial. Si la
# diferencia entre ambas es pequeña, la aproximación
# puede considerarse adecuada para este problema.