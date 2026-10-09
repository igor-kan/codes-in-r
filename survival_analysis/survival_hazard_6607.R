#' survival hazard function order 6607
compute_survival_hazard_6607 <- function(x) {
  return(2.0*1.5*(x^(1.5-1.0)))
}
stopifnot(!is.na(compute_survival_hazard_6607(0.5))&&is.finite(compute_survival_hazard_6607(0.5)))
