2020-03-04
================

# `tidyr::drop_na()` - i know this one\!

``` r
library(tidyr)

df <- tribble(
  ~date,        ~fruit,   ~cost, ~sales,
  "2020-03-01", "Apple",     NA,     NA,
  "2020-03-01", "Banana",     5,      3,
  "2020-03-02", "Apple",     10,      4,
  "2020-03-02", "Banana",    NA,      1
)

# Use drop_na() to drop any records where a variable is NA
# By default, drops records where *any* variable has NA:
df %>%
  drop_na()
```

    ## # A tibble: 2 x 4
    ##   date       fruit   cost sales
    ##   <chr>      <chr>  <dbl> <dbl>
    ## 1 2020-03-01 Banana     5     3
    ## 2 2020-03-02 Apple     10     4

``` r
# Specify a variable to only drop if that variable is NA:
df %>%
  drop_na(sales)
```

    ## # A tibble: 3 x 4
    ##   date       fruit   cost sales
    ##   <chr>      <chr>  <dbl> <dbl>
    ## 1 2020-03-01 Banana     5     3
    ## 2 2020-03-02 Apple     10     4
    ## 3 2020-03-02 Banana    NA     1

``` r
# Use tidyselect, too!
df %>%
  drop_na(starts_with("dat"))
```

    ## # A tibble: 4 x 4
    ##   date       fruit   cost sales
    ##   <chr>      <chr>  <dbl> <dbl>
    ## 1 2020-03-01 Apple     NA    NA
    ## 2 2020-03-01 Banana     5     3
    ## 3 2020-03-02 Apple     10     4
    ## 4 2020-03-02 Banana    NA     1

# `magrittr::set_colnames()` - new to me\!

``` r
library(magrittr)
library(dplyr)
library(knitr)

df <- tribble(
  ~date,        ~fruit,   ~cost, ~sales,
  "2020-03-01", "Apple",     NA,     NA,
  "2020-03-01", "Banana",     5,      3,
  "2020-03-02", "Apple",     10,      4,
  "2020-03-02", "Banana",    NA,      1
)

# Change a data frame's column names within a pipeline!
df %>%
  group_by(date) %>%
  summarise(sales = sum(sales, na.rm = TRUE)) %>%
  set_colnames(c("Date", "Total Sales")) %>% # Hello! Right here!
  kable()
```

| Date       | Total Sales |
| :--------- | ----------: |
| 2020-03-01 |           3 |
| 2020-03-02 |           5 |

``` r
# No more of this!
df_sales <- df %>%
  group_by(date) %>%
  summarise(sales = sum(sales, na.rm = TRUE))

# Naming outside the pipeline! Yuck!
names(df_sales) <- c("Date", "Total Sales")

kable(df_sales)
```

| Date       | Total Sales |
| :--------- | ----------: |
| 2020-03-01 |           3 |
| 2020-03-02 |           5 |
