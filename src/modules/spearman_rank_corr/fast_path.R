fast_rank_vec <- function(x) {
  mid_ranks(x)
}
fast_spearman_only <- function(x, y) {
  cor(mid_ranks(x), mid_ranks(y))
}
