mann_whitney_u_wilcox_r_stop <- function(kind, msg) {
  stop(sprintf("[mann_whitney_u_wilcox_r:%s] %s", kind, msg), call. = FALSE)
}
