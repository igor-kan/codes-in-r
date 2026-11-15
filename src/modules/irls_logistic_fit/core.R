fit_logistic.matrix <- function(x, y, config = new_irls_config()) {
  validate_logistic_inputs(x, y)
  X <- if (config$add_intercept) cbind(Intercept = 1.0, x) else x
  n <- nrow(X)
  p <- ncol(X)
  beta <- rep(0.0, p)
  converged <- FALSE
  dev <- Inf
  iter_used <- 0L
  xtwx <- matrix(0.0, p, p)

  for (iter in seq_len(config$max_iter)) {
    eta <- as.vector(X %*% beta)
    eta <- pmax(pmin(eta, 30.0), -30.0)
    mu <- 1.0 / (1.0 + exp(-eta))
    w <- pmax(mu * (1.0 - mu), 1e-12)
    z <- eta + (y - mu) / w
    xtwx <- crossprod_weighted(X, w)
    xtwz <- as.vector(crossprod(X, w * z))
    beta_new <- solve(xtwx, xtwz)
    step_norm <- max(abs(beta_new - beta))
    beta <- beta_new
    iter_used <- iter
    dev <- -2.0 * sum(y * log(pmax(mu, 1e-15)) + (1.0 - y) * log(pmax(1.0 - mu, 1e-15)))
    if (step_norm < config$tol) {
      converged <- TRUE
      break
    }
  }
  cov_mat <- solve(xtwx)
  se <- sqrt(pmax(diag(cov_mat), 0.0))
  names(beta) <- colnames(X)
  new_irls_fit(coef = beta, se = se, deviance = dev, iter = iter_used, converged = converged)
}

predict_prob.irls_fit <- function(object, newdata, ...) {
  X <- cbind(1.0, as.matrix(newdata))
  eta <- as.vector(X %*% object$coef)
  1.0 / (1.0 + exp(-eta))
}
