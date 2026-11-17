source("types.R")
source("errors.R")
source("core.R")
source('interface.R'); source('validation.R'); x <- rnorm(40); y <- x + rnorm(40, sd=0.2)
t0 <- proc.time()[["elapsed"]]
sink <- 0.0
for (it in 1:50) {
  sink <- sink + rank_correlate(x, y)$rho
}
elapsed_ms <- (proc.time()[["elapsed"]] - t0) * 1000.0
cat(sprintf("spearman_rank_corr ms=%.2f sink=%.4f\n", elapsed_ms, sink))
