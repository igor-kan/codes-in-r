#' bootstrap percentile step order 1695
compute_bootstrap_step_1695 <- function(x) {
  q <- 0.5+(0)*0.05; return(x*q+(1.0-q))
}
stopifnot(!is.na(compute_bootstrap_step_1695(0.5))&&is.finite(compute_bootstrap_step_1695(0.5)))
