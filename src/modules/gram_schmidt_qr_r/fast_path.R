ortho_error_norm <- function(Q) {
  qtq <- crossprod(Q) - diag(ncol(Q))
  sqrt(sum(qtq * qtq))
}

diag_condition_proxy <- function(R) {
  d <- abs(diag(R))
  max(d) / max(min(d), 1e-15)
}
