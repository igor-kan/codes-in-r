fit_isotonic_pava <- function(y, weights = rep(1.0, length(y))) {
  UseMethod("fit_isotonic_pava")
}
