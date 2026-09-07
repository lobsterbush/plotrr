#--- Histogram plots function ---#
#'@title Draw a histogram for each group
#'@description Draws the distribution of x separately for each group.
#'@author Charles Crabtree \email{charles.crabtree@monash.edu}
#'@param x The name of the x column, as a string.
#'@param y Kept for compatibility; this function doesn't use it.
#'@param group The name of the grouping column, as a string.
#'@param data A data frame.
#'@param n The number of bins.
#'@return Prints one histogram per group. The function returns NULL invisibly.
#'@examples
#'a <- runif(1000, min = 0, max = 1)
#'b <- a + rnorm(1000, mean = 0, sd = 1)
#'c <- rep(c(1:10), times = 100)
#'data <- data.frame(a, b, c)
#'histplots("a", "b", "c", data, 5)
#'@export

histplots <- function(x, y, group, data, n) {
  with(data, {
    for(i in 1:length(unique(data[[group]]))) {
      j <- unique(data[[group]])[i]
      hist.j <- ggplot2::ggplot(data[data[[group]]==j, ], ggplot2::aes(x = data[[x]][data[[group]]==j])) + ggplot2::geom_histogram(bins=n) + ggplot2::labs(title = j) + ggplot2::xlab(x)
      hist.j <- hist.j + ggplot2::theme_bw()
      print(hist.j)
    }
  }
  )
}
