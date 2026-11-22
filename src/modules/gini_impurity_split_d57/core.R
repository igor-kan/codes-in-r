gini_impurity <- function(labels) {
  n <- length(labels)
  if (n == 0L) return(0.0)
  p <- as.numeric(table(labels)) / n
  1.0 - sum(p * p)
}

gini_split_gain <- function(parent, left, right) {
  n <- length(parent)
  gini_impurity(parent) - (length(left) / n) * gini_impurity(left) - (length(right) / n) * gini_impurity(right)
}
