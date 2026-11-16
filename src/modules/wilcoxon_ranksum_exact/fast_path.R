hodges_lehmann_fast <- function(x, y) {
  diffs <- outer(x, y, "-")
  stats::median(as.vector(diffs))
}
