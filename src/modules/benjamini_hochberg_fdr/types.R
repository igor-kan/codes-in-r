fdr_report <- function(bh, holm) {
  structure(list(bh = bh, holm = holm, method = 'BH_Holm'), class = 'fdr_report')
}
