rosenbrock_2d <- function(x) {
  100.0 * (x[2L] - x[1L]^2)^2 + (1.0 - x[1L])^2
}

himmelblau_2d <- function(x) {
  (x[1L]^2 + x[2L] - 11.0)^2 + (x[1L] + x[2L]^2 - 7.0)^2
}
