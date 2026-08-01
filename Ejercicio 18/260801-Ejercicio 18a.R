# ---------------------------------------------------------
# Ejercicio 18a
# ---------------------------------------------------------

# Enunciado:
# El proveedor de un producto electrónico ha establecido
# contractualmente que la tasa de fallas durante el primer
# año de uso no supera el 0.5 %. Una tienda vende 400
# unidades durante ese año.
#
# Calcule la probabilidad de observar más de 5 fallas.

# Distribución:
# Poisson (aproximación de la Binomial).

# Justificación:
# Originalmente el número de fallas sigue una distribución
# Binomial, ya que existe un número fijo de unidades
# vendidas (n = 400), cada unidad puede fallar o no y la
# probabilidad de falla es constante (p = 0.005).
#

#Solución mediante Binomial
1 - pbinom(q = 5,
           size = 400,
           prob = 0.005)

# Interpretación:
# El resultado representa la probabilidad de que más de
# cinco de las 400 unidades vendidas fallen durante su
# primer año de uso, suponiendo que la tasa de fallas es
# del 0.5 %.