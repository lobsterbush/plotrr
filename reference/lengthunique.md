# Count distinct non-missing values

Count distinct non-missing values.

## Usage

``` r
lengthunique(x)
```

## Arguments

- x:

  A vector.

## Value

The number of distinct values after removing missing values.

## Author

Charles Crabtree <charles.crabtree@monash.edu>

## Examples

``` r
x <- rep(c(1:10), 10)
lengthunique(x)
#> [1] 10
```
