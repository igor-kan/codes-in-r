check_finite_num <- function(x) {
  if (!is.numeric(x) || any(!is.finite(x))) {
    RMod_stop('nan', 'non-finite value detected')
  }
  TRUE
}
