source("types.R")
source("errors.R")
source("interface.R")
source("core.R")
source("validation.R")
source("fast_path.R")
source("concurrency.R")
source("invariants.R")

t0 <- proc.time()[["elapsed"]]
acc <- 0.0
for (it in seq_len(25L)) {
  X <- matrix(rnorm(120 * 8), 120, 8); y <- rnorm(120)
  p <- fit_ridge_gcv(X, y)
  acc <- acc + p$best$gcv
}
elapsed <- proc.time()[["elapsed"]] - t0
cat(sprintf("ridge_gcv_svd_solver elapsed=%.4f acc=%.4f\n", elapsed, acc))
