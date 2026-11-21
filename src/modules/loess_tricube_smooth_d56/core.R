loess_predict_point <- function(x, y, x0, span = 0.75) {
  n <- length(x)
  k <- max(2L, min(n, as.integer(ceiling(span * n))))
  d <- abs(x - x0)
  ord <- order(d)[seq_len(k)]
  dmax <- max(d[ord])
  if (dmax <= 0.0) return(mean(y[ord]))
  u <- pmin(1.0, d[ord] / (dmax * 1.00001))
  w <- (1.0 - u^3)^3
  dx <- x[ord] - x0
  sw <- sum(w)
  swx <- sum(w * dx)
  swxx <- sum(w * dx * dx)
  swy <- sum(w * y[ord])
  swxy <- sum(w * dx * y[ord])
  denom <- sw * swxx - swx * swx
  if (abs(denom) < 1e-14) return(swy / sw)
  (swy * swxx - swx * swxy) / denom
}
