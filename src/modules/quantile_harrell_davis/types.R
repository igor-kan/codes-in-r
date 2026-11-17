hd_quant <- function(q, weights) {
  obj <- list(estimate = q, weights = weights)
  structure(obj, module = 'quantile_harrell_davis')
}
