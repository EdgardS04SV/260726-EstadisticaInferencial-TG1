# ---------------------------------------------------------
# Ejercicio 18b
# ---------------------------------------------------------

# Enunciado:
# Justifique si resulta aceptable emplear la distribución
# de Poisson como aproximación y compare numéricamente
# ambos resultados.

# Justificación:
# Sí es aceptable utilizar la distribución de Poisson como
# aproximación de la Binomial porque:
#
# • El número de ensayos es grande: n = 400.
# • La probabilidad de éxito (falla) es pequeña: p = 0.005.
# • El producto λ = np = 400 × 0.005 = 2 es pequeño.
#
# Estas condiciones hacen que la distribución Binomial
# sea muy bien aproximada por una Poisson.

# Probabilidad exacta (Binomial)
prob_binomial <- 1 - pbinom(q = 5,
                            size = 400,
                            prob = 0.005)

# Probabilidad aproximada (Poisson)

prob_poisson <- 1 - ppois(q = 5,lambda = 2)

# Mostrar resultados
prob_binomial
prob_poisson

# Diferencia absoluta entre ambos resultados
abs(prob_binomial - prob_poisson)

# Interpretación:
# Si la diferencia entre ambas probabilidades es muy
# pequeña, puede concluirse que la aproximación de
# Poisson es adecuada para este problema.