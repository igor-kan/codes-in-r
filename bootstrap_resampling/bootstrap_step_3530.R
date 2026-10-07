#' bootstrap percentile step order 3530
compute_bootstrap_step_3530 <- function(x) {
  q <- 0.5+(0)*0.05; return(x*q+(1.0-q))
}
stopifnot(!is.na(compute_bootstrap_step_3530(0.5))&&is.finite(compute_bootstrap_step_3530(0.5)))
