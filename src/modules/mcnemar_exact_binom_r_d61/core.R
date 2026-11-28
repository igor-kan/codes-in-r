mcnemar_exact <- function(b, c) {
  if (b < 0 || c < 0 || b != round(b) || c != round(c)) {
    mcnemar_stop("count", "discordant counts must be non-negative integers")
  }
  n <- b + c
  if (n == 0) {
    return(mcnemar_result(0.0, 1.0, 0L))
  }
  stat <- (b - c)^2 / n
  p <- as.numeric(stats::binom.test(min(b, c), n, 0.5)$p.value)
  mcnemar_result(stat, p, as.integer(n))
}
