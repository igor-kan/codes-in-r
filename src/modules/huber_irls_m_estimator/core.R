fit_huber_irls <- function(X, y, k = 1.345, max_it = 50, tol = 1e-8) {
  q <- qr(X); beta <- as.numeric(qr.coef(q, y))
  for (it in 1:max_it) {
    r <- as.numeric(y - X %*% beta)
    s <- mad(r, constant = 1.4826)
    if (s < 1e-10) return(huber_fit(beta, s, it))
    u <- abs(r) / s
    w <- ifelse(u <= k, 1.0, k / u)
    sw <- sqrt(w)
    beta_new <- as.numeric(qr.coef(qr(X * sw), y * sw))
    if (max(abs(beta_new - beta)) <= tol) return(huber_fit(beta_new, s, it))
    beta <- beta_new
  }
  huber_fit(beta, mad(as.numeric(y - X %*% beta)), max_it)
}
