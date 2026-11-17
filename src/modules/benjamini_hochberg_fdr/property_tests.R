source('types.R'); source('errors.R'); source('interface.R'); source('validation.R'); source('core.R'); source('concurrency.R'); source('invariants.R')
set.seed(12)
bs <- batch_adjust_fdr(list(runif(20), runif(15, 0, 0.1)))
stopifnot(all(bs[[1]]$bh >= 0 & bs[[1]]$bh <= 1))
