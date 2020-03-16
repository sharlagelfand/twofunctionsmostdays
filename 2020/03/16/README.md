2020-03-16
================

# `janitor::get_dupes()` - i know this one\!

``` r
library(janitor, warn.conflicts = FALSE)
library(tibble)

df <- tribble(
  ~id, ~date, ~store_id, ~sales,
  1, "2020-03-01", 1, 100,
  2, "2020-03-01", 2, 100,
  3, "2020-03-01", 3, 150,
  4, "2020-03-02", 1, 110,
  5, "2020-03-02", 3, 101
)

# Use janitor::get_dupes() to get rows for values of the indicated variables appear more than once
# Rows for values of store_id that aren't unique
df %>%
  get_dupes(store_id)
```

    ## # A tibble: 4 x 5
    ##   store_id dupe_count    id date       sales
    ##      <dbl>      <int> <dbl> <chr>      <dbl>
    ## 1        1          2     1 2020-03-01   100
    ## 2        1          2     4 2020-03-02   110
    ## 3        3          2     3 2020-03-01   150
    ## 4        3          2     5 2020-03-02   101

``` r
# Duplicates of date
df %>%
  get_dupes(date)
```

    ## # A tibble: 5 x 5
    ##   date       dupe_count    id store_id sales
    ##   <chr>           <int> <dbl>    <dbl> <dbl>
    ## 1 2020-03-01          3     1        1   100
    ## 2 2020-03-01          3     2        2   100
    ## 3 2020-03-01          3     3        3   150
    ## 4 2020-03-02          2     4        1   110
    ## 5 2020-03-02          2     5        3   101

``` r
# Check for no duplication of store_id and date
df %>%
  get_dupes(date, store_id)
```

    ## No duplicate combinations found of: date, store_id

    ## # A tibble: 0 x 5
    ## # … with 5 variables: date <chr>, store_id <dbl>, dupe_count <int>, id <dbl>,
    ## #   sales <dbl>

``` r
# Check that id is unique:
df %>%
  get_dupes(id)
```

    ## No duplicate combinations found of: id

    ## # A tibble: 0 x 5
    ## # … with 5 variables: id <dbl>, dupe_count <int>, date <chr>, store_id <dbl>,
    ## #   sales <dbl>

``` r
# If nothing is supplied, checks all variables
df %>%
  get_dupes()
```

    ## No variable names specified - using all columns.

    ## No duplicate combinations found of: id, date, store_id, sales

    ## # A tibble: 0 x 5
    ## # … with 5 variables: id <dbl>, date <chr>, store_id <dbl>, sales <dbl>,
    ## #   dupe_count <int>

# `janitor::remove_constant()` - new to me\!

``` r
library(janitor)
library(tibble)

df <- tribble(
  ~id, ~date, ~store_id, ~sales,
  1, "2020-03-01", 1, 100,
  2, "2020-03-01", 2, 100,
  3, "2020-03-01", 3, 150
)

# Use janitor::remove_constant() to remove columns that are constant:
df %>%
  remove_constant()
```

    ## # A tibble: 3 x 3
    ##      id store_id sales
    ##   <dbl>    <dbl> <dbl>
    ## 1     1        1   100
    ## 2     2        2   100
    ## 3     3        3   150

``` r
# By default, doesn't consider NA to make the column constant.
tribble(
  ~id, ~date, ~store_id, ~sales,
  1, "2020-03-01", 1, 100,
  2, "2020-03-01", 2, 100,
  3, NA_character_, 3, 150
) %>%
  remove_constant()
```

    ## # A tibble: 3 x 4
    ##      id date       store_id sales
    ##   <dbl> <chr>         <dbl> <dbl>
    ## 1     1 2020-03-01        1   100
    ## 2     2 2020-03-01        2   100
    ## 3     3 <NA>              3   150

``` r
# Set na.rm = TRUE if you want it to:
tribble(
  ~id, ~date, ~store_id, ~sales,
  1, "2020-03-01", 1, 100,
  2, "2020-03-01", 2, 100,
  3, NA_character_, 3, 150
) %>%
  remove_constant(na.rm = TRUE)
```

    ## # A tibble: 3 x 3
    ##      id store_id sales
    ##   <dbl>    <dbl> <dbl>
    ## 1     1        1   100
    ## 2     2        2   100
    ## 3     3        3   150

``` r
# Bonus: use remove_empty() to remove rows or columns that are all NA
tribble(
  ~id, ~date, ~store_id, ~sales,
  1, NA_character_, 1, 100,
  2, NA_character_, 2, 100,
  3, NA_character_, 3, 150
) %>%
  remove_empty("cols")
```

    ## # A tibble: 3 x 3
    ##      id store_id sales
    ##   <dbl>    <dbl> <dbl>
    ## 1     1        1   100
    ## 2     2        2   100
    ## 3     3        3   150

``` r
tribble(
  ~id, ~date, ~store_id, ~sales,
  1, "2020-03-01", 1, 100,
  2, "2020-03-01", 2, 100,
  3, "2020-03-01", 3, 150,
  NA_real_, NA_character_, NA_real_, NA_real_
) %>%
  remove_empty("rows")
```

    ## # A tibble: 3 x 4
    ##      id date       store_id sales
    ##   <dbl> <chr>         <dbl> <dbl>
    ## 1     1 2020-03-01        1   100
    ## 2     2 2020-03-01        2   100
    ## 3     3 2020-03-01        3   150
