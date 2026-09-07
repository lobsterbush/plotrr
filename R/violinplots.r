#--- Violin plots function ---#
#'@title Draw violin plots within each group
#'@description Draws the distribution of y across values of x, separately for each group.
#'@author Charles Crabtree \email{charles.crabtree@monash.edu}
#'@param x The name of the x column, as a string.
#'@param y The name of the y column, as a string.
#'@param group The name of the grouping column, as a string.
#'@param data A data frame.
#'@return Prints one plot per group. The function returns NULL invisibly.
#'@examples
#'a <- runif(1000, min = 0, max = 1)
#'b <- a + rnorm(1000, mean = 0, sd = 1)
#'c <- rep(c(1:10), times = 100)
#'data <- data.frame(a, b, c)
#'violinplots("a", "b", "c", data)
#'@export

violinplots <- function(x, y, group, data) {
  with(data, {
    for(i in 1:length(unique(data[[group]]))) {
      j <- unique(data[[group]])[i]
      violin.j <- ggplot2::ggplot(data[data[[group]]==j, ], ggplot2::aes(x = data[[x]][data[[group]]==j], y = data[[y]][data[[group]]==j])) + ggplot2::geom_violin() + ggplot2::labs(title = j) + ggplot2::xlab(x) + ggplot2::ylab(y)
      violin.j <- violin.j + ggplot2::theme_bw()
      print(violin.j)
    }
  }
  )
}
