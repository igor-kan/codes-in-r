#' bootstrap percentile step order 2600
compute_bootstrap_step_2600 <- function(x) {
  q <- 0.5+(0)*0.05; return(x*q+(1.0-q))
}
stopifnot(!is.na(compute_bootstrap_step_2600(0.5))&&is.finite(compute_bootstrap_step_2600(0.5)))
