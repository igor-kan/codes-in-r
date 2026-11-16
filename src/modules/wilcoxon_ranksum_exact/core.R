wilcox_ranksum_fit.numeric <- function(x, y, continuity = TRUE) {
  validate_two_samples(x, y)
  n1 <- as.numeric(length(x))
  n2 <- as.numeric(length(y))
  N <- n1 + n2
  combined <- c(x, y)
  ranks <- rank(combined, ties.method = "average")
  w_sum <- sum(ranks[seq_len(length(x))])
  u_stat <- w_sum - n1 * (n1 + 1.0) / 2.0
  rle_t <- rle(sort(combined))
  ties <- rle_t$lengths[rle_t$lengths > 1L]
  tie_term <- if (length(ties) > 0L) sum(ties^3 - ties) / (N * (N - 1.0)) else 0.0
  var_u <- (n1 * n2 / 12.0) * ((N + 1.0) - tie_term)
  mu_u <- n1 * n2 / 2.0
  diff <- u_stat - mu_u
  if (continuity && diff != 0.0) diff <- diff - 0.5 * sign(diff)
  z <- diff / sqrt(max(var_u, 1e-15))
  p_val <- 2.0 * stats::pnorm(-abs(z))
  hl_shift <- hodges_lehmann_fast(x, y)
  new_wilcox_result(w_sum, u_stat, z, p_val, hl_shift)
}
