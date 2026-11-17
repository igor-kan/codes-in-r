harrell_davis_q <- function(x, prob) {
  xs <- sort(x); n <- length(xs)
  a <- (n + 1.0) * prob; b <- (n + 1.0) * (1.0 - prob)
  grid <- (0:n) / n
  cdfs <- pbeta(grid, a, b)
  w <- diff(cdfs)
  hd_quant(sum(w * xs), w)
}
