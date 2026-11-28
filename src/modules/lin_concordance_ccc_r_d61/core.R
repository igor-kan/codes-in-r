lin_ccc <- function(x, y) {
  if (length(x) != length(y)) {
    lin_concordance_ccc_r_d61_stop("dim", "x and y must have equal length")
  }
  keep <- is.finite(x) & is.finite(y)
  x <- as.numeric(x[keep])
  y <- as.numeric(y[keep])
  n <- length(x)
  if (n < 2L) {
    lin_concordance_ccc_r_d61_stop("dim", "at least two finite pairs are required")
  }
  mx <- mean(x)
  my <- mean(y)
  sxx <- sum((x - mx)^2) / (n - 1.0)
  syy <- sum((y - my)^2) / (n - 1.0)
  sxy <- sum((x - mx) * (y - my)) / (n - 1.0)
  if (sxx <= 0.0 || syy <= 0.0) {
    lin_concordance_ccc_r_d61_stop("zero", "both inputs need positive variance")
  }
  sx <- sqrt(sxx)
  sy <- sqrt(syy)
  rho <- sxy / (sx * sy)
  v <- sy / sx
  u <- (my - mx) / sqrt(sx * sy)
  cb <- 2.0 / (v + 1.0 / v + u^2)
  ccc_result(rho * cb, rho, cb, as.integer(n))
}
