huber_fit <- function(beta, scale, iters) {
  obj <- list(beta = beta, scale = scale, iters = iters)
  structure(obj, module = 'huber_irls_m_estimator')
}
