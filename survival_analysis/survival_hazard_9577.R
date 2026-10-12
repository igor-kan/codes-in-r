#' survival hazard function order 9577
compute_survival_hazard_9577 <- function(x) {
  return(2.0*1.5*(x^(1.5-1.0)))
}
stopifnot(!is.na(compute_survival_hazard_9577(0.5))&&is.finite(compute_survival_hazard_9577(0.5)))
