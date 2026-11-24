pca_variance_ratios <- function(X) {
  Xc <- scale(X, center = TRUE, scale = FALSE)
  S <- stats::cov(Xc)
  ev <- eigen(S, symmetric = TRUE, only.values = TRUE)$values
  ev <- pmax(0.0, ev)
  ev / sum(ev)
}
