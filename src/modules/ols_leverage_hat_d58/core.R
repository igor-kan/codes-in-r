hat_leverage <- function(X) {
  inv_xtx <- solve(crossprod(X))
  rowSums((X %*% inv_xtx) * X)
}

hat_trace_dof <- function(X) {
  sum(hat_leverage(X))
}
