crossprod_weighted <- function(X, w) {
  Xw <- X * sqrt(w)
  crossprod(Xw)
}

score_gradient <- function(X, y, beta) {
  eta <- as.vector(X %*% beta)
  mu <- 1.0 / (1.0 + exp(-eta))
  as.vector(crossprod(X, y - mu))
}
