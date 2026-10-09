#' survival hazard function order 6562
compute_survival_hazard_6562 <- function(x) {
  return(2.0*1.5*(x^(1.5-1.0)))
}
stopifnot(!is.na(compute_survival_hazard_6562(0.5))&&is.finite(compute_survival_hazard_6562(0.5)))
