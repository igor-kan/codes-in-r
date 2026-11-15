row_log_sum_exp <- function(mat) {
  m <- apply(mat, 1L, max)
  m + log(rowSums(exp(mat - m)))
}

component_entropy <- function(resp) {
  safe_p <- pmax(resp, 1e-15)
  -sum(safe_p * log(safe_p))
}
