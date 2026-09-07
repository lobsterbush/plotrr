# Draw violin plots within each group

Draws the distribution of y across values of x, separately for each
group.

## Usage

``` r
violinplots(x, y, group, data)
```

## Arguments

- x:

  The name of the x column, as a string.

- y:

  The name of the y column, as a string.

- group:

  The name of the grouping column, as a string.

- data:

  A data frame.

## Value

Prints one plot per group. The function returns NULL invisibly.

## Author

Charles Crabtree <charles.crabtree@monash.edu>

## Examples

``` r
a <- runif(1000, min = 0, max = 1)
b <- a + rnorm(1000, mean = 0, sd = 1)
c <- rep(c(1:10), times = 100)
data <- data.frame(a, b, c)
violinplots("a", "b", "c", data)









```
