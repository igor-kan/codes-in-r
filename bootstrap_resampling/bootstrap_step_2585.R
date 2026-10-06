#' bootstrap percentile step order 2585
compute_bootstrap_step_2585 <- function(x) {
  q <- 0.5+(0)*0.05; return(x*q+(1.0-q))
}
stopifnot(!is.na(compute_bootstrap_step_2585(0.5))&&is.finite(compute_bootstrap_step_2585(0.5)))
