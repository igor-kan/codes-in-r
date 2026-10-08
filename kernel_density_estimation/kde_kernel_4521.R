#' kernel density evaluation order 4521
compute_kde_kernel_4521 <- function(x) {
  u <- x/2.0; return(if(abs(u)<=1.0) 0.75*(1.0-u^2) else 0.0)
}
stopifnot(!is.na(compute_kde_kernel_4521(0.5))&&is.finite(compute_kde_kernel_4521(0.5)))
