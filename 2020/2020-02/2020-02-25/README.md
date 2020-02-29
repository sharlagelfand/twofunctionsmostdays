2020-02-25
================

# `tidyr::complete()` - i know this one\!

``` r
library(tidyr)

df <- tribble(
  ~Date, ~Fruit, ~Sold,
  "2020-02-01", "Apple", 5,
  "2020-02-01", "Banana", 1,
  "2020-02-02", "Apple", 2
)

# Use complete() to complete the data set to include all combinations of Date and Fruit:
df %>%
  complete(Date, Fruit)
```

    ## # A tibble: 4 x 3
    ##   Date       Fruit   Sold
    ##   <chr>      <chr>  <dbl>
    ## 1 2020-02-01 Apple      5
    ## 2 2020-02-01 Banana     1
    ## 3 2020-02-02 Apple      2
    ## 4 2020-02-02 Banana    NA

``` r
# By default fills with NA, but you can set the value!
df %>%
  complete(Date, Fruit, fill = list(Sold = 0))
```

    ## # A tibble: 4 x 3
    ##   Date       Fruit   Sold
    ##   <chr>      <chr>  <dbl>
    ## 1 2020-02-01 Apple      5
    ## 2 2020-02-01 Banana     1
    ## 3 2020-02-02 Apple      2
    ## 4 2020-02-02 Banana     0

``` r
# If the variables are factors, it will complete *all* levels (even those not in the data)
library(forcats)

# Making Fruit into a factor, and adding "Orange" as level
df[["Fruit"]] <- fct_expand(df[["Fruit"]], "Orange")

df %>%
  complete(Date, Fruit)
```

    ## # A tibble: 6 x 3
    ##   Date       Fruit   Sold
    ##   <chr>      <fct>  <dbl>
    ## 1 2020-02-01 Apple      5
    ## 2 2020-02-01 Banana     1
    ## 3 2020-02-01 Orange    NA
    ## 4 2020-02-02 Apple      2
    ## 5 2020-02-02 Banana    NA
    ## 6 2020-02-02 Orange    NA

``` r
# Use nesting() to only complete levels that *are* in the data
df %>%
  complete(Date, nesting(Fruit))
```

    ## # A tibble: 4 x 3
    ##   Date       Fruit   Sold
    ##   <chr>      <fct>  <dbl>
    ## 1 2020-02-01 Apple      5
    ## 2 2020-02-01 Banana     1
    ## 3 2020-02-02 Apple      2
    ## 4 2020-02-02 Banana    NA

# `tidyr::unpack()` - new to me\!

``` r
library(tidyr)

# Take a data frame with nested "df-columns", like `fruit` and `hours`
# This kind of data can occur e.g. from the output of an API
df <- tibble(
  date = c("2020-02-01", "2020-02-01", "2020-02-02"),
  fruit = tibble(
    item = c("Apple", "Banana", "Apple"),
    n = c(1, 2, 1)
  ),
  hours = tibble(
    employee = c("Owner", "Manager", "Owner"),
    n = c(8, 4, 6)
  )
)

df
```

    ## # A tibble: 3 x 3
    ##   date       fruit$item    $n hours$employee    $n
    ##   <chr>      <chr>      <dbl> <chr>          <dbl>
    ## 1 2020-02-01 Apple          1 Owner              8
    ## 2 2020-02-01 Banana         2 Manager            4
    ## 3 2020-02-02 Apple          1 Owner              6

``` r
# Use unpack() to expand the df-columns out into individual columns
df %>%
  unpack(fruit)
```

    ## # A tibble: 3 x 4
    ##   date       item       n hours$employee    $n
    ##   <chr>      <chr>  <dbl> <chr>          <dbl>
    ## 1 2020-02-01 Apple      1 Owner              8
    ## 2 2020-02-01 Banana     2 Manager            4
    ## 3 2020-02-02 Apple      1 Owner              6

``` r
# If you want to unpack both, you need to specify the name repair (since one of the df-columns in fruit and hours have the same name)
# Doing it without will give an error:
df %>%
  unpack(c(fruit, hours))
```

    ## Error: Column name `n` must not be duplicated.

``` r
# Setting names_repair as "unique" will ensure they're unique
df %>%
  unpack(c(fruit, hours), names_repair = "unique")
```

    ## New names:
    ## * n -> n...3
    ## * n -> n...5

    ## # A tibble: 3 x 5
    ##   date       item   n...3 employee n...5
    ##   <chr>      <chr>  <dbl> <chr>    <dbl>
    ## 1 2020-02-01 Apple      1 Owner        8
    ## 2 2020-02-01 Banana     2 Manager      4
    ## 3 2020-02-02 Apple      1 Owner        6

``` r
# But those aren't very nice! It would be nice to know which n came from fruit and which from hours
# Use the names_sep argument for that:
df %>%
  unpack(c(fruit, hours), names_sep = "_")
```

    ## # A tibble: 3 x 5
    ##   date       fruit_item fruit_n hours_employee hours_n
    ##   <chr>      <chr>        <dbl> <chr>            <dbl>
    ## 1 2020-02-01 Apple            1 Owner                8
    ## 2 2020-02-01 Banana           2 Manager              4
    ## 3 2020-02-02 Apple            1 Owner                6
