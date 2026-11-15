batch_pava_columns <- function(ymat) {
  apply(ymat, 2L, function(col) fit_isotonic_pava(col)$fitted)
}
