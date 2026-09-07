# Convert numeric factor labels to numbers

Convert numeric factor labels to numbers.

## Usage

``` r
makefacnum(x)
```

## Arguments

- x:

  A vector.

## Value

A numeric vector.

## Author

Charles Crabtree <charles.crabtree@monash.edu>

## Examples

``` r
x <- c("1", "2", "3")
x <- as.factor(x)
x
#> [1] 1 2 3
#> Levels: 1 2 3
x <- makefacnum(x)
x
#> [1] 1 2 3
is.numeric(x)
#> [1] TRUE
```
