eval_ecdf.numeric <- function(sample_x, grid) {
  ks_assert(length(sample_x) >= 1L && all(is.finite(sample_x)), "invalid sample vector")
  sx <- sort(sample_x)
  findInterval(grid, sx) / length(sx)
}

ks_asymptotic_pvalue <- function(d, n_eff) {
  z <- (sqrt(n_eff) + 0.12 + 0.11 / sqrt(n_eff)) * d
  if (z < 0.05) return(1.0)
  j <- 1:40
  val <- 2.0 * sum(((-1.0)^(j - 1L)) * exp(-2.0 * (j * z)^2))
  max(min(val, 1.0), 0.0)
}

ks_two_sample.numeric <- function(x, y) {
  validate_ks_samples(x, y)
  pts <- sort(unique(c(x, y)))
  fx <- eval_ecdf(x, pts)
  fy <- eval_ecdf(y, pts)
  d <- max(abs(fx - fy))
  nx <- as.numeric(length(x))
  ny <- as.numeric(length(y))
  n_eff <- (nx * ny) / (nx + ny)
  new_ks_report(statistic = d, p_value = ks_asymptotic_pvalue(d, n_eff), n1 = length(x), n2 = length(y))
}
