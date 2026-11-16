#' Two-sample Wilcoxon rank-sum test and Hodges-Lehmann location estimator.
wilcox_ranksum_fit <- function(x, y, continuity = TRUE) {
  UseMethod("wilcox_ranksum_fit")
}

print.wilcox_rs_result <- function(x, ...) {
  cat(sprintf("Wilcoxon U=%.2f z=%.4f p=%.4g HL_shift=%.6f\n", x$U, x$z, x$p_value, x$shift))
  invisible(x)
}
