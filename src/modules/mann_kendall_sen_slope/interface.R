#' Fit Mann-Kendall trend statistic and Theil-Sen regression slope.
mann_kendall_sen <- function(x, config = new_mk_config()) {
  UseMethod("mann_kendall_sen")
}

print.mk_result <- function(x, ...) {
  cat(sprintf("MK S=%.1f tau=%.4f p=%.4g slope=%.6f\n", x$S, x$tau, x$p_value, x$slope))
  invisible(x)
}
