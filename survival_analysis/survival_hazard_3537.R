#' survival hazard function order 3537
compute_survival_hazard_3537 <- function(x) {
  return(1.0*1.5*(x^(1.5-1.0)))
}
stopifnot(!is.na(compute_survival_hazard_3537(0.5))&&is.finite(compute_survival_hazard_3537(0.5)))
