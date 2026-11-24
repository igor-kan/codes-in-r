oneway_f_stat <- function(vals, groups) {
  g <- as.factor(groups)
  grand <- mean(vals)
  ssb <- sum(tapply(vals, g, function(v) length(v) * (mean(v) - grand)^2))
  ssw <- sum(tapply(vals, g, function(v) sum((v - mean(v))^2)))
  k <- nlevels(g); n <- length(vals)
  (ssb / (k - 1.0)) / (ssw / (n - k))
}
