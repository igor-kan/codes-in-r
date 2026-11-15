verify_ks_properties <- function(x, y, rep) {
  stopifnot(rep$statistic >= 0.0 && rep$statistic <= 1.0)
  rep_sym <- ks_two_sample(y, x)
  stopifnot(abs(rep$statistic - rep_sym$statistic) < 1e-14)
  invisible(TRUE)
}
