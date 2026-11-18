box_cox_profile <- function(y, grid = seq(-2, 2, by = 0.05)) {
  n <- length(y)
  sum_log_y <- sum(log(y))
  lls <- numeric(length(grid))
  for (i in seq_along(grid)) {
    lam <- grid[i]
    yt <- if (abs(lam) < 1e-9) log(y) else (y^lam - 1.0) / lam
    s2 <- sum((yt - mean(yt))^2) / n
    lls[i] <- -0.5 * n * log(s2) + (lam - 1.0) * sum_log_y
  }
  idx <- which.max(lls)
  bc_res(grid[idx], lls[idx])
}
