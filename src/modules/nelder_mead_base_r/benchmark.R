source("types.R")
source("errors.R")
source("interface.R")
source("core.R")
source("validation.R")
source("fast_path.R")
source("concurrency.R")
source("invariants.R")
t0 <- proc.time()[["elapsed"]]
res <- nelder_mead_minimize(rosenbrock_2d, c(-1.5, 2.0), new_nm_config(max_iter = 1500L, tol = 1e-9))
elapsed <- proc.time()[["elapsed"]] - t0
stopifnot(res$value < 1e-8)
cat(sprintf("nelder_mead_base_r elapsed=%.4fs val=%.3e\n", elapsed, res$value))
