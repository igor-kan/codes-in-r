soft_threshold.numeric <- function(z, gamma) {
  sign(z) * pmax(abs(z) - gamma, 0.0)
}

solve_lasso.matrix <- function(X, y, config = new_lasso_config()) {
  validate_lasso_inputs(X, y, config)
  n <- nrow(X)
  p <- ncol(X)
  col_norm2 <- colSums(X * X) / n
  beta <- rep(0.0, p)
  r <- y
  trace_obj <- numeric(config$max_iter)
  converged <- FALSE
  used <- 0L

  for (iter in seq_len(config$max_iter)) {
    max_delta <- 0.0
    for (j in seq_len(p)) {
      if (col_norm2[j] <= 1e-15) next
      old_b <- beta[j]
      xj <- X[, j]
      r_partial <- r + xj * old_b
      rho <- sum(xj * r_partial) / n
      new_b <- soft_threshold(rho, config$lambda) / col_norm2[j]
      if (new_b != old_b) {
        beta[j] <- new_b
        r <- r_partial - xj * new_b
        diff <- abs(new_b - old_b)
        if (diff > max_delta) max_delta <- diff
      }
    }
    used <- iter
    trace_obj[iter] <- 0.5 * sum(r * r) / n + config$lambda * sum(abs(beta))
    if (max_delta < config$tol) {
      converged <- TRUE
      break
    }
  }
  new_lasso_fit(beta = beta, objective_trace = trace_obj[seq_len(used)], iter = used, converged = converged)
}
