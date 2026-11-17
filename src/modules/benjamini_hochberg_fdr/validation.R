validate_pvals <- function(p) {
  if (length(p) < 1L || any(!is.finite(p)) || any(p < 0 | p > 1)) FdrAdjust_stop('bounds', 'p-values must be in [0,1]')
}
