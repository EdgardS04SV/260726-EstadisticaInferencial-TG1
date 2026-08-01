# ---------------------------------------------------------
# Ejercicio 7 (c)
# ---------------------------------------------------------

# Enunciado:
# Realice una simulación en R con 100 000 réplicas y
# set.seed(2026), empleando tanto la distribución exacta
# como la aproximación de Poisson.
#
# Compare los tres resultados (exacto, aproximación y
# simulación) en una tabla.

# Parámetros
n <- 500
p <- 0.02
lambda <- n * p
n_replicas <- 100000

# Fijar semilla
set.seed(2026)

# ---------------------------------------------------------
# Probabilidad exacta (Binomial)
# ---------------------------------------------------------

prob_exacta <- pbinom(q = 5,
                      size = n,
                      prob = p)

# ---------------------------------------------------------
# Aproximación mediante Poisson
# ---------------------------------------------------------

prob_poisson <- ppois(q = 5,
                      lambda = lambda)

# ---------------------------------------------------------
# Simulación Binomial
# ---------------------------------------------------------

sim_binomial <- rbinom(n = n_replicas,
                       size = n,
                       prob = p)

prob_simulada_binomial <- mean(sim_binomial <= 5)

# ---------------------------------------------------------
# Simulación Poisson
# ---------------------------------------------------------

sim_poisson <- rpois(n = n_replicas,
                     lambda = lambda)

prob_simulada_poisson <- mean(sim_poisson <= 5)

# ---------------------------------------------------------
# Tabla comparativa
# ---------------------------------------------------------

resultados <- data.frame(
  Metodo = c("Exacta (Binomial)",
             "Aprox. Poisson",
             "Simulación Binomial",
             "Simulación Poisson"),
  Probabilidad = round(c(prob_exacta,
                         prob_poisson,
                         prob_simulada_binomial,
                         prob_simulada_poisson), 6)
)

resultados

# Interpretación:
# La simulación Binomial debe aproximarse a la
# probabilidad exacta, mientras que la simulación
# de Poisson debe aproximarse a la probabilidad
# obtenida mediante la aproximación de Poisson.
#
# Si las cuatro probabilidades son muy similares,
# puede concluirse que la aproximación de Poisson
# es adecuada para este problema.