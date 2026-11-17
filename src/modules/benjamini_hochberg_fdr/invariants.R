verify_matches_padjust <- function(p, rep) {
  stopifnot(max(abs(rep$bh - p.adjust(p, method = 'BH'))) < 1e-13)
  stopifnot(max(abs(rep$holm - p.adjust(p, method = 'holm'))) < 1e-13)
}
