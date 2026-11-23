logsumexp_vec <- function(x) {
  m <- max(x)
  m + log(sum(exp(x - m)))
}

softmax_vec <- function(x) {
  m <- max(x)
  e <- exp(x - m)
  e / sum(e)
}
