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
  r <- mann_kendall_sen(cumsum(rnorm(80)) + seq_len(80) * 0.2)
  acc <- acc + r$slope
}
elapsed <- proc.time()[["elapsed"]] - t0
cat(sprintf("mann_kendall_sen_slope elapsed=%.4f acc=%.4f\n", elapsed, acc))
