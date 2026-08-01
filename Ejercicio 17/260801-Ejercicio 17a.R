# ---------------------------------------------------------
# Ejercicio 17.a
# ---------------------------------------------------------

# Enunciado a:
# De un total de 300 usuarios activos en una plataforma,
# el 2 % son cuentas automatizadas (bots). Se extrae una
# muestra sin reemplazo de 40 usuarios. Calcule la
# probabilidad de que la muestra contenga exactamente
# 3 bots.

# Distribución:
# Hipergeométrica.

# Justificación:
# Se utiliza una distribución Hipergeométrica porque se
# selecciona una muestra SIN REEMPLAZO de una población
# finita. Al no reemplazar los usuarios seleccionados,
# la probabilidad de elegir un bot cambia en cada extracción,
# por lo que los ensayos no son independientes.

# Variable aleatoria:
# X = Número de bots encontrados en la muestra.
#
# X ~ Hipergeométrica(N = 300, K = 6, n = 40)
#
# donde:
# N = 300  -> Tamaño de la población.
# K = 6    -> Número de bots en la población (2 % de 300).
# n = 40   -> Tamaño de la muestra.

# Probabilidad solicitada:
# P(X = 3)

# Función utilizada:
# dhyper(x, m, n, k)
#
# x = número de éxitos deseados.
# m = número de éxitos en la población.
# n = número de fracasos en la población.
# k = tamaño de la muestra.

# Código en R
dhyper(x = 3,
       m = 6,
       n = 294,
       k = 40)

# Interpretación:
# El resultado representa la probabilidad de que,
# al seleccionar 40 usuarios sin reemplazo de una
# población de 300 donde existen 6 bots, exactamente
# 3 de los usuarios seleccionados sean bots.