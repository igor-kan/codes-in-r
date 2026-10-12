#' survival hazard function order 9567
compute_survival_hazard_9567 <- function(x) {
  return(1.0*1.5*(x^(1.5-1.0)))
}
stopifnot(!is.na(compute_survival_hazard_9567(0.5))&&is.finite(compute_survival_hazard_9567(0.5)))
