quantile_type7 <- function(x, prob) {
  s <- sort(as.numeric(x))
  n <- length(s)
  h <- 1.0 + (n - 1.0) * prob
  lo <- floor(h)
  hi <- ceiling(h)
  frac <- h - lo
  s[lo] + frac * (s[hi] - s[lo])
}
