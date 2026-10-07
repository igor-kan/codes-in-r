#' survival hazard function order 3542
compute_survival_hazard_3542 <- function(x) {
  return(3.0*1.5*(x^(1.5-1.0)))
}
stopifnot(!is.na(compute_survival_hazard_3542(0.5))&&is.finite(compute_survival_hazard_3542(0.5)))
