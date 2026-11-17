source("types.R")
source("errors.R")
source("core.R")
source('interface.R'); source('validation.R'); p <- runif(200)
t0 <- proc.time()[["elapsed"]]
sink <- 0.0
for (it in 1:50) {
  sink <- sink + sum(adjust_pvals(p)$bh)
}
elapsed_ms <- (proc.time()[["elapsed"]] - t0) * 1000.0
cat(sprintf("benjamini_hochberg_fdr ms=%.2f sink=%.4f\n", elapsed_ms, sink))
