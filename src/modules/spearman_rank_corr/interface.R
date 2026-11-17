rank_correlate <- function(x, y) {
  UseMethod('rank_correlate')
}
rank_method_name <- function() 'SpearmanKendall'
