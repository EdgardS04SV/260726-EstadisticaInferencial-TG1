# ---------------------------------------------------------
# Ejercicio 17d
# ---------------------------------------------------------

# Enunciado:
# De un grupo de 12 estudiantes, el 25 % obtiene
# históricamente calificación de honor. Calcule la
# probabilidad de que este ciclo al menos 4 estudiantes
# obtengan dicha calificación.

# Distribución:
# Binomial.

# Justificación:
# Se utiliza una distribución Binomial porque existe un
# número fijo de ensayos (12 estudiantes), cada estudiante
# puede obtener o no calificación de honor, la probabilidad
# de éxito es constante (p = 0.25) y se asume que los
# resultados son independientes.

# Variable aleatoria:
# X = Número de estudiantes que obtienen calificación
# de honor.
#
# X ~ Binomial(n = 12, p = 0.25)

# Probabilidad solicitada:
# P(X ≥ 4)

# Función utilizada:
# pbinom(x, size, prob)
#
# pbinom() calcula probabilidades acumuladas P(X ≤ x).
# Para probabilidades del tipo "al menos", se utiliza
# el complemento.

# Código en R (método recomendado)
1 - pbinom(q = 3,
           size = 12,
           prob = 0.25)

# Código equivalente utilizando lower.tail = FALSE
pbinom(q = 3,
       size = 12,
       prob = 0.25,
       lower.tail = FALSE)

# Interpretación:
# El resultado representa la probabilidad de que al menos
# 4 de los 12 estudiantes obtengan calificación de honor.