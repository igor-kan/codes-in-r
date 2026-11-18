variance_homogeneity <- function(values, groups) {
  lvls <- unique(groups)
  k <- length(lvls); N <- length(values)
  z <- numeric(N); ns <- numeric(k); vars <- numeric(k); z_means <- numeric(k)
  for (i in seq_len(k)) {
    mask <- (groups == lvls[i])
    xi <- values[mask]
    ns[i] <- length(xi)
    vars[i] <- var(xi)
    zi <- abs(xi - median(xi))
    z[mask] <- zi
    z_means[i] <- mean(zi)
  }
  z_bar <- mean(z)
  ss_b <- sum(ns * (z_means - z_bar)^2)
  ss_w <- 0.0
  for (i in seq_len(k)) {
    zi <- z[groups == lvls[i]]
    ss_w <- ss_w + sum((zi - z_means[i])^2)
  }
  bf_f <- ((N - k) / (k - 1.0)) * (ss_b / ss_w)
  df <- ns - 1.0
  sp2 <- sum(df * vars) / (N - k)
  num <- (N - k) * log(sp2) - sum(df * log(vars))
  c_cor <- 1.0 + (1.0 / (3.0 * (k - 1.0))) * (sum(1.0 / df) - 1.0 / (N - k))
  homog_res(bf_f, num / c_cor)
}
