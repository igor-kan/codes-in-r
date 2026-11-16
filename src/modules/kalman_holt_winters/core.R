holt_recurse_sse <- function(y, alpha, beta, phi = 1.0, return_full = FALSE) {
  n <- length(y)
  l <- y[1L]
  b <- y[2L] - y[1L]
  fitted <- numeric(n)
  fitted[1L] <- y[1L]
  sse <- 0.0
  for (t in 2:n) {
    pred <- l + phi * b
    fitted[t] <- pred
    err <- y[t] - pred
    sse <- sse + err * err
    l_next <- alpha * y[t] + (1.0 - alpha) * (l + phi * b)
    b <- beta * (l_next - l) + (1.0 - beta) * phi * b
    l <- l_next
  }
  if (!return_full) return(sse)
  list(level = l, trend = b, fitted = fitted, residuals = y - fitted, sse = sse)
}

fit_holt_trend.numeric <- function(y, damped = FALSE, phi = 1.0) {
  validate_holt_series(y, phi)
  phi_eff <- if (damped) phi else 1.0
  obj <- function(par) {
    a <- par[1L]; b <- par[2L]
    if (a <= 0.01 || a >= 0.99 || b <= 0.001 || b >= 0.99) return(1e18)
    holt_recurse_sse(y, a, b, phi_eff, FALSE)
  }
  opt <- stats::optim(c(0.4, 0.2), obj, method = "Nelder-Mead")
  st <- holt_recurse_sse(y, opt$par[1L], opt$par[2L], phi_eff, TRUE)
  new_holt_model(opt$par[1L], opt$par[2L], phi_eff, st$level, st$trend, st$fitted, st$residuals, st$sse)
}
