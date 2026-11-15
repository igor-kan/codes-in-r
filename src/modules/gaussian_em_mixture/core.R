fit_gaussian_em.numeric <- function(x, config = new_gmm_config()) {
  validate_gmm_inputs(x, config)
  n <- length(x)
  k <- config$k
  qs <- stats::quantile(x, probs = seq(0.15, 0.85, length.out = k))
  means <- as.numeric(qs)
  vars <- rep(stats::var(x), k)
  weights <- rep(1.0 / k, k)
  ll_trace <- numeric(config$max_iter)
  converged <- FALSE
  used <- 0L
  prev_ll <- -Inf

  for (iter in seq_len(config$max_iter)) {
    log_resp <- matrix(0.0, nrow = n, ncol = k)
    for (j in seq_len(k)) {
      log_resp[, j] <- log(weights[j]) + stats::dnorm(x, mean = means[j], sd = sqrt(vars[j]), log = TRUE)
    }
    lse <- row_log_sum_exp(log_resp)
    ll <- sum(lse)
    ll_trace[iter] <- ll
    used <- iter
    resp <- exp(log_resp - lse)

    nk <- pmax(colSums(resp), 1e-12)
    weights <- nk / n
    means <- as.vector(crossprod(resp, x)) / nk
    for (j in seq_len(k)) {
      vars[j] <- max(sum(resp[, j] * (x - means[j])^2) / nk[j], config$min_var)
    }
    if (iter > 1L && abs(ll - prev_ll) < config$tol) {
      converged <- TRUE
      break
    }
    prev_ll <- ll
  }
  new_gmm_fit(weights = weights, means = means, vars = vars, loglik_trace = ll_trace[seq_len(used)], converged = converged)
}
