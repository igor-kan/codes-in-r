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
  r <- detect_cusum(rnorm(500), target_mu = 0.0)
  acc <- acc + cusum_max_statistic(r)
}
elapsed <- proc.time()[["elapsed"]] - t0
cat(sprintf("cusum_changepoint_page elapsed=%.4f acc=%.4f\n", elapsed, acc))
