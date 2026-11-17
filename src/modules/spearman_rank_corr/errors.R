RankCorr_stop <- function(kind, msg) {
  stop(sprintf("[%s:%s] %s", "RankCorr", kind, msg), call. = FALSE)
}
