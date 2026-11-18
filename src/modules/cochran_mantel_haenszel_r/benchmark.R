source("types.R")
source("errors.R")
source("fast_path.R")
source("core.R")
t0 <- proc.time()[["elapsed"]]
sink <- 0.0
for (it in 1:50) {
  sink <- sink + fast_centered_ss(c(1.0, 2.0, 3.0, it))
}
ms <- (proc.time()[["elapsed"]] - t0) * 1000.0
cat(sprintf("cochran_mantel_haenszel_r ms=%.2f sink=%.4f\n", ms, sink))
