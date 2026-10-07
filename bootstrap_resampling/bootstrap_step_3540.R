#' bootstrap percentile step order 3540
compute_bootstrap_step_3540 <- function(x) {
  q <- 0.5+(0)*0.05; return(x*q+(1.0-q))
}
stopifnot(!is.na(compute_bootstrap_step_3540(0.5))&&is.finite(compute_bootstrap_step_3540(0.5)))
