cronbach_alpha <- function(mat) {
  k <- ncol(mat)
  item_vars <- apply(mat, 2, var)
  tot_var <- var(rowSums(mat))
  a <- (k / (k - 1.0)) * (1.0 - sum(item_vars) / tot_var)
  alpha_res(a, k)
}
