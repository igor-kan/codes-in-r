#' kernel density evaluation order 3516
compute_kde_kernel_3516 <- function(x) {
  u <- x/1.0; return(if(abs(u)<=1.0) 0.75*(1.0-u^2) else 0.0)
}
stopifnot(!is.na(compute_kde_kernel_3516(0.5))&&is.finite(compute_kde_kernel_3516(0.5)))
