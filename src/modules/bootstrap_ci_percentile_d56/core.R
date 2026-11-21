boot_mean_ci <- function(x, B = 200L, seed = 42L) {
  n <- length(x)
  means <- numeric(B)
  st <- as.numeric(seed)
  for (b in seq_len(B)) {
    idx <- integer(n)
    for (i in seq_len(n)) {
      st <- (1664525.0 * st + 1013904223.0) %% 4294967296.0
      idx[i] <- 1L + as.integer(floor((st / 4294967296.0) * n))
    }
    means[b] <- mean(x[idx])
  }
  s_m <- sort(means)
  list(lo = s_m[max(1L, as.integer(0.025 * B))], hi = s_m[min(B, as.integer(0.975 * B))], est = mean(x))
}
