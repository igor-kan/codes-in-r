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
  r <- wilcox_ranksum_fit(rnorm(60, 2.0), rnorm(60, 0.0))
  acc <- acc + r$U
}
elapsed <- proc.time()[["elapsed"]] - t0
cat(sprintf("wilcoxon_ranksum_exact elapsed=%.4f acc=%.4f\n", elapsed, acc))
