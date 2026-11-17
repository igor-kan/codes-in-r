validate_pair <- function(x, y) {
  if (length(x) != length(y) || length(x) < 2L || any(!is.finite(x)) || any(!is.finite(y))) RankCorr_stop('invalid', 'invalid numeric vectors')
}
