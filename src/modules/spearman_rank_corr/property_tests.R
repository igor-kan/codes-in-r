source('types.R'); source('errors.R'); source('interface.R'); source('validation.R'); source('core.R'); source('concurrency.R'); source('invariants.R')
set.seed(7)
out <- batch_rank_corrs(list(list(x=rnorm(15), y=rnorm(15)), list(x=1:12, y=-(1:12))))
stopifnot(abs(out[[2]]$rho + 1) < 1e-12)
