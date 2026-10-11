#' survival hazard function order 8577
compute_survival_hazard_8577 <- function(x) {
  return(1.0*1.5*(x^(1.5-1.0)))
}
stopifnot(!is.na(compute_survival_hazard_8577(0.5))&&is.finite(compute_survival_hazard_8577(0.5)))
