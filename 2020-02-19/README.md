2020-02-19
================

# `janitor::clean_names()` - i know this one\!

``` r
library(janitor)
library(dplyr)

df <- tibble(
  Date = "2020-02-01",
  `Dollars Earned` = 10,
  `% Loss` = 5,
  `2020 Total` = 100
)

# Clean up the column names, make them easier (and safer!) to use!
clean_names(df)
```

    ## # A tibble: 1 x 4
    ##   date       dollars_earned percent_loss x2020_total
    ##   <chr>               <dbl>        <dbl>       <dbl>
    ## 1 2020-02-01             10            5         100

``` r
# The default is snake_case, but you can change that too:
clean_names(df, case = "lower_camel")
```

    ## # A tibble: 1 x 4
    ##   date       dollarsEarned percentLoss x2020Total
    ##   <chr>              <dbl>       <dbl>      <dbl>
    ## 1 2020-02-01            10           5        100

# `slider::slide_dbl()` - new to me\!

``` r
library(slider)

x <- c(1, 2, 3, 4, 5)

# Make a "sliding" version of the sum function, summing the current value and the 2 values prior to it, and return the results as a double vector
slide_dbl(x, sum, .before = 2)
```

    ## [1]  1  3  6  9 12

``` r
# Set .complete to FALSE to only compute the sum if there are *actually* 2 values before - otherwise, return NA!
slide_dbl(x, sum, .before = 2, .complete = TRUE)
```

    ## [1] NA NA  6  9 12
