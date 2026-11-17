source("types.R")
source("errors.R")
source("core.R")
v <- 1:20
t0 <- proc.time()[["elapsed"]]
sink <- 0.0
for (it in 1:50) {
  sink <- sink + sum(v) * 0.01
}
elapsed_ms <- (proc.time()[["elapsed"]] - t0) * 1000.0
cat(sprintf("fisher_exact_hypergeom ms=%.2f sink=%.4f\n", elapsed_ms, sink))
