cosine_sim_mat <- function(M) {
  norms <- sqrt(rowSums(M * M))
  normed <- M / norms
  tcrossprod(normed)
}
