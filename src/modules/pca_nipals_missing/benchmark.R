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
  X <- matrix(rnorm(60 * 5), 60, 5); p <- fit_nipals_pca(X, 2L)
  acc <- acc + p$sdev[1L]
}
elapsed <- proc.time()[["elapsed"]] - t0
cat(sprintf("pca_nipals_missing elapsed=%.4f acc=%.4f\n", elapsed, acc))
