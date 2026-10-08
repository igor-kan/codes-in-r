#' survival hazard function order 5537
compute_survival_hazard_5537 <- function(x) {
  return(3.0*1.5*(x^(1.5-1.0)))
}
stopifnot(!is.na(compute_survival_hazard_5537(0.5))&&is.finite(compute_survival_hazard_5537(0.5)))
