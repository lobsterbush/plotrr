# Exploring relationships within groups

## Look within groups

We built `plotrr` to inspect relationships within groups before fitting
a model to pooled data. Exploratory data analysis helps us see the
observations and assumptions we’re bringing to an analysis (Tukey 1977).
It can also reveal unusual cases that deserve a closer look
(NIST/SEMATECH 2012).

Here we’ll use simulated data to show how the plotting functions work.
The patterns come from the simulation; they aren’t evidence about a
population.

### Relationships within groups

As demonstrated in Crabtree and Nelson (2017), group-level plots can
help us see whether an expected relationship appears in particular
cases. We’d use those patterns to guide further investigation, with the
research design still determining what we can say about causes.

#### `bivarplots`

[`bivarplots()`](https://lobsterbush.github.io/plotrr/reference/bivarplots.md)
prints a scatterplot and smooth curve for each group. Check how many
groups you have first with
[`lengthunique()`](https://lobsterbush.github.io/plotrr/reference/lengthunique.md);
a large dataset can produce a lot of plots.

``` r
library(plotrr)
a <- runif(400, min = 0, max = 1)
b <- a + rnorm(400, mean = 0, sd = 1)
c <- rep(c(1:4), times = 100)
data <- data.frame(a, b, c)
bivarplots("a", "b", "c", data)
```

    ## `geom_smooth()` using formula = 'y ~ x'
    ## `geom_smooth()` using formula = 'y ~ x'
    ## `geom_smooth()` using formula = 'y ~ x'
    ## `geom_smooth()` using formula = 'y ~ x'

![](plotrr-vignette_files/figure-html/unnamed-chunk-1-1.png)![](plotrr-vignette_files/figure-html/unnamed-chunk-1-2.png)![](plotrr-vignette_files/figure-html/unnamed-chunk-1-3.png)![](plotrr-vignette_files/figure-html/unnamed-chunk-1-4.png)

#### `dotplots`

[`dotplots()`](https://lobsterbush.github.io/plotrr/reference/dotplots.md)
prints the distribution of x as stacked dots for each group. Its y
argument is retained for compatibility and is unused.

``` r
library(plotrr)
a <- runif(400, min = 0, max = 1)
b <- a + rnorm(400, mean = 0, sd = 1)
c <- rep(c(1:4), times = 100)
data <- data.frame(a, b, c)
dotplots("a", "b", "c", data, 20)
```

![](plotrr-vignette_files/figure-html/unnamed-chunk-2-1.png)![](plotrr-vignette_files/figure-html/unnamed-chunk-2-2.png)![](plotrr-vignette_files/figure-html/unnamed-chunk-2-3.png)![](plotrr-vignette_files/figure-html/unnamed-chunk-2-4.png)

#### `violinplots`

[`violinplots()`](https://lobsterbush.github.io/plotrr/reference/violinplots.md)
shows the distribution of y across values of x within each group.

``` r
library(plotrr)
a <- runif(400, min = 0, max = 1)
b <- a + rnorm(400, mean = 0, sd = 1)
c <- rep(c(1:4), times = 100)
data <- data.frame(a, b, c)
violinplots("a", "b", "c", data)
```

![](plotrr-vignette_files/figure-html/unnamed-chunk-3-1.png)![](plotrr-vignette_files/figure-html/unnamed-chunk-3-2.png)![](plotrr-vignette_files/figure-html/unnamed-chunk-3-3.png)![](plotrr-vignette_files/figure-html/unnamed-chunk-3-4.png)

### Comparing measures

We can use these plots to examine competing measures within groups.
Agreement between measures is one part of assessing construct validity
(Trochim & Donnelly, 2008). A disagreement in a particular case can also
suggest a useful question: what is each measure capturing there?

### Other visualization functions

[`histplots()`](https://lobsterbush.github.io/plotrr/reference/histplots.md)
prints a histogram of x for each group. Set `n` to choose the number of
bins; the y argument is unused.

``` r
library(plotrr)
a <- rnorm(400, mean = 2, sd = 100)
b <- a + rnorm(400, mean = 0, sd = 1)
c <- rep(c(1:4), times = 100)
data <- data.frame(a, b, c)
histplots("a", "b", "c", data, 5)
```

![](plotrr-vignette_files/figure-html/unnamed-chunk-4-1.png)![](plotrr-vignette_files/figure-html/unnamed-chunk-4-2.png)![](plotrr-vignette_files/figure-html/unnamed-chunk-4-3.png)![](plotrr-vignette_files/figure-html/unnamed-chunk-4-4.png)

[`bivarrugplot()`](https://lobsterbush.github.io/plotrr/reference/bivarrugplot.md)
adds a mark along each axis for every observed value. The rugs help show
where observations are concentrated.

``` r
library(plotrr)
a <- runif(1000, min = 0, max = 1)
b <- a + rnorm(1000, mean = 0, sd =1)
data <- data.frame(a, b)
bivarrugplot("a", "b", data)
```

    ## Warning: Using `size` aesthetic for lines was deprecated in ggplot2 3.4.0.
    ## ℹ Please use `linewidth` instead.
    ## ℹ The deprecated feature was likely used in the plotrr package.
    ##   Please report the issue at <https://github.com/lobsterbush/plotrr/issues>.
    ## This warning is displayed once per session.
    ## Call `lifecycle::last_lifecycle_warnings()` to see where this warning was
    ## generated.

    ## Warning: Use of `data[[x]]` is discouraged.
    ## ℹ Use `.data[[x]]` instead.

    ## Warning: Use of `data[[y]]` is discouraged.
    ## ℹ Use `.data[[y]]` instead.

    ## Warning: Use of `data[[x]]` is discouraged.
    ## ℹ Use `.data[[x]]` instead.

    ## Warning: Use of `data[[y]]` is discouraged.
    ## ℹ Use `.data[[y]]` instead.

![](plotrr-vignette_files/figure-html/unnamed-chunk-5-1.png)

### Other functions

[`lengthunique()`](https://lobsterbush.github.io/plotrr/reference/lengthunique.md)
counts distinct non-missing values.
[`makefacnum()`](https://lobsterbush.github.io/plotrr/reference/makefacnum.md)
reads a factor’s labels as numbers; non-numeric labels become missing
values with a warning.
[`clear()`](https://lobsterbush.github.io/plotrr/reference/clear.md)
prints a form-feed character, which clears some console displays.

#### References

- Crabtree, Charles, and Michael J. Nelson. 2017. “New Evidence for a
  Positive Relationship Between De Facto Judicial Independence and State
  Respect for Empowerment Rights.” *International Studies Quarterly*.
- NIST/SEMATECH. 2012. *e-Handbook of Statistical Methods*.
  <https://www.itl.nist.gov/div898/handbook/>.
- Trochim, William M. K., and James P. Donnelly. 2008. *Research Methods
  Knowledge Base*. New York, NY: Cengage Learning.
- Tukey, John W. 1977. *Exploratory Data Analysis*. New York, NY:
  Pearson.
