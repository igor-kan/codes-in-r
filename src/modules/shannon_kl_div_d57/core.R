shannon_entropy <- function(p) {
  p <- p / sum(p)
  nz <- p[p > 0]
  -sum(nz * log(nz))
}

kl_divergence <- function(p, q) {
  p <- p / sum(p); q <- q / sum(q)
  idx <- which(p > 0)
  if (any(q[idx] <= 0)) return(Inf)
  sum(p[idx] * log(p[idx] / q[idx]))
}
