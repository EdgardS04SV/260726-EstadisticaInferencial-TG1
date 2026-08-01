# ---------------------------------------------------------
# Ejercicio 17c
# ---------------------------------------------------------

# Enunciado:
# Un desarrollador arregla en promedio el 30 % de los
# reportes de errores al primer intento. Los intentos se
# prolongan hasta lograr arreglar el segundo reporte.
# Calcule la probabilidad de que se requieran exactamente
# 6 intentos.

# Distribución:
# Binomial Negativa.

# Justificación:
# Se utiliza una distribución Binomial Negativa porque
# cada intento tiene dos posibles resultados (éxito o fracaso),
# la probabilidad de éxito permanece constante (p = 0.30),
# los intentos son independientes y el experimento termina
# cuando se alcanza un número fijo de éxitos (2 reportes
# arreglados).

# Variable aleatoria:
# X = Número total de intentos necesarios para lograr
# el segundo reporte arreglado.
#
# X ~ Binomial Negativa(r = 2, p = 0.30)

# Probabilidad solicitada:
# P(X = 6)

# Función utilizada:
# dnbinom(x, size, prob)
#
# x    = número de fracasos antes del último éxito.
# size = número de éxitos requeridos.
# prob = probabilidad de éxito.

# IMPORTANTE:
# En R, dnbinom() NO recibe el número total de intentos,
# sino el número de FRACASOS antes del segundo éxito.
#
# Si el segundo éxito ocurre en el intento 6:
# Fracasos = 6 - 2 = 4

# Código en R
dnbinom(x = 4,
        size = 2,
        prob = 0.30)

# Interpretación:
# El resultado representa la probabilidad de que el
# desarrollador necesite exactamente 6 intentos para
# conseguir arreglar exitosamente el segundo reporte.