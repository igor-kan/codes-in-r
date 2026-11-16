new_nipals_pca <- function(scores, loadings, sdev, ncomp) {
  structure(
    list(scores = scores, loadings = loadings, sdev = sdev, ncomp = ncomp),
    class = "nipals_pca"
  )
}
