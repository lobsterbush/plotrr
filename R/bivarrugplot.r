#--- Bivariate plot with rugplot function ---#
#'@title Draw a scatterplot with marginal rugs
#'@description Draws a scatterplot and adds marks along each axis at the observed values.
#'@author Charles Crabtree \email{charles.crabtree@monash.edu}
#'@param x The name of the x column, as a string.
#'@param y The name of the y column, as a string.
#'@param data A data frame.
#'@return Prints the plot and returns the ggplot object invisibly.
#'@examples
#'a <- runif(1000, min = 0, max = 1)
#'b <- a + rnorm(1000, mean = 0, sd = 1)
#'data <- data.frame(a, b)
#'bivarrugplot("a", "b", data)
#'@export

bivarrugplot <- function(x, y, data) {
  with(data, {
    bivar.rug <- ggplot2::ggplot(data, ggplot2::aes(x = data[[x]], y = data[[y]]))
    bivar.rug <- bivar.rug + ggplot2::scale_x_continuous(limit=c(min(data[[x]]), max(data[[x]]))) + ggplot2::scale_y_continuous(limit=c(min(data[[y]]), max(data[[y]])))
    bivar.rug <- bivar.rug + ggplot2::geom_point() + ggplot2::geom_rug(size=0.2) + ggplot2::theme_bw()
    print(bivar.rug)
  }
  )
}
