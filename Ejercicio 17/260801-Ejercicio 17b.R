# ---------------------------------------------------------
# Ejercicio 17.b
# ---------------------------------------------------------

# Enunciado:
# Un producto electrónico registra en promedio 2.5 devoluciones
# por mes. Calcule la probabilidad de que en un trimestre
# (3 meses) se reciban exactamente 6 devoluciones.

# Distribución:
# Poisson.

# Justificación:
# Se utiliza una distribución de Poisson porque se desea
# modelar el número de ocurrencias (devoluciones) en un
# intervalo fijo de tiempo (un trimestre), con una tasa
# promedio conocida y suponiendo que las devoluciones
# ocurren de manera independiente.

# Variable aleatoria:
# X = Número de devoluciones durante un trimestre.
#
# X ~ Poisson(λ = 7.5)
#
# donde:
# λ mensual = 2.5 devoluciones/mes
# λ trimestral = 2.5 × 3 = 7.5 devoluciones/trimestre

# Probabilidad solicitada:
# P(X = 6)

# Función utilizada:
# dpois(x, lambda)
#
# x      = número de ocurrencias deseadas.
# lambda = número promedio de ocurrencias en el intervalo.

# Código en R
dpois(x = 6,
      lambda = 7.5)

# Interpretación:
# El resultado representa la probabilidad de que durante
# un trimestre se registren exactamente 6 devoluciones,
# sabiendo que el promedio esperado es de 7.5 devoluciones
# por trimestre.