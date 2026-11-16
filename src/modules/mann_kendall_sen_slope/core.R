mann_kendall_sen.numeric <- function(x, config = new_mk_config()) {
  validate_mk_series(x)
  n <- length(x)
  s_stat <- mk_s_fast(x)
  rle_x <- rle(sort(x))
  ties <- rle_x$lengths[rle_x$lengths > 1L]
  tie_corr <- if (length(ties) > 0L) sum(ties * (ties - 1.0) * (2.0 * ties + 5.0)) else 0.0
  var_s <- (n * (n - 1.0) * (2.0 * n + 5.0) - tie_corr) / 18.0
  sd_s <- sqrt(max(var_s, 1e-15))
  z <- 0.0
  if (s_stat > 0.0) {
    z <- (s_stat - if (config$continuity) 1.0 else 0.0) / sd_s
  } else if (s_stat < 0.0) {
    z <- (s_stat + if (config$continuity) 1.0 else 0.0) / sd_s
  }
  p_val <- 2.0 * stats::pnorm(-abs(z))
  tau <- s_stat / (0.5 * n * (n - 1.0))

  slopes <- numeric(n * (n - 1L) / 2L)
  pos <- 1L
  for (i in seq_len(n - 1L)) {
    j_idx <- (i + 1L):n
    k_len <- length(j_idx)
    slopes[pos:(pos + k_len - 1L)] <- (x[j_idx] - x[i]) / (j_idx - i)
    pos <- pos + k_len
  }
  sen_slope <- stats::median(slopes)
  t_idx <- seq_len(n)
  intercept <- stats::median(x - sen_slope * t_idx)
  new_mk_result(s_stat, var_s, z, p_val, tau, sen_slope, intercept)
}
