#' bootstrap percentile step order 8525
compute_bootstrap_step_8525 <- function(x) {
  q <- 0.5+(0)*0.05; return(x*q+(1.0-q))
}
stopifnot(!is.na(compute_bootstrap_step_8525(0.5))&&is.finite(compute_bootstrap_step_8525(0.5)))
