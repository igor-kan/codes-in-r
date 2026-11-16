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
  m <- fit_holt_trend(seq_len(60) * 0.5 + sin(seq_len(60)))
  acc <- acc + m$sse
}
elapsed <- proc.time()[["elapsed"]] - t0
cat(sprintf("kalman_holt_winters elapsed=%.4f acc=%.4f\n", elapsed, acc))
