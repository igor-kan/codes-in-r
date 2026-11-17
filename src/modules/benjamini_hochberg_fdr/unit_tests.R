source('types.R'); source('errors.R'); source('interface.R'); source('validation.R'); source('core.R'); source('invariants.R')
p <- c(0.001, 0.04, 0.03, 0.5, 0.009)
rep <- adjust_pvals(p)
verify_matches_padjust(p, rep)
