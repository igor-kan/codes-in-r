ridge_fit_beta <- function(X, y, lambda = 1.0) {
  p <- ncol(X)
  XtX <- crossprod(X) + diag(lambda, nrow = p, ncol = p)
  Xty <- crossprod(X, y)
  as.numeric(solve(XtX, Xty))
}
