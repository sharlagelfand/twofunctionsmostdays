2020-03-11
================

# `tidyr::separate()` - i know this one\!

``` r
library(tidyr)

df <- tribble(
  ~description, ~sales,
  "fruit_apple_red", 1,
  "fruit_banana", 2,
  "vegetable_carrot", 3,
  "laptop", 1
)

# Use separate() to one column into multiple, based on a separator
df %>%
  separate(description, into = c("category", "item"), sep = "_")
```

    ## Warning: Expected 2 pieces. Additional pieces discarded in 1 rows [1].

    ## Warning: Expected 2 pieces. Missing pieces filled with `NA` in 1 rows [4].

    ## # A tibble: 4 x 3
    ##   category  item   sales
    ##   <chr>     <chr>  <dbl>
    ## 1 fruit     apple      1
    ## 2 fruit     banana     2
    ## 3 vegetable carrot     3
    ## 4 laptop    <NA>       1

``` r
# If there are more values than expected (e.g. in fruit_apple_red, which is separated into fruit, apple, and red) it throws a warning
# Turn that off with extra = "drop"
# If values don't contain as many pieces as expected (i.e., two - category, and item) it throws a warning and fills from the right (i.e., the earlier columns are filled in first)
df %>%
  separate(description, into = c("category", "item"), extra = "drop", fill = "right")
```

    ## # A tibble: 4 x 3
    ##   category  item   sales
    ##   <chr>     <chr>  <dbl>
    ## 1 fruit     apple      1
    ## 2 fruit     banana     2
    ## 3 vegetable carrot     3
    ## 4 laptop    <NA>       1

``` r
# It's smart and can auto-detect the separator pretty well, so you don't always have to specify it!

# If you want to fill in the later columns instead, opt to fill from the left:
df %>%
  separate(description, into = c("category", "item"), extra = "drop", fill = "left")
```

    ## # A tibble: 4 x 3
    ##   category  item   sales
    ##   <chr>     <chr>  <dbl>
    ## 1 fruit     apple      1
    ## 2 fruit     banana     2
    ## 3 vegetable carrot     3
    ## 4 <NA>      laptop     1

# `tidyr::unite()` - new to me\!

``` r
library(tidyr)

df <- tribble(
  ~category, ~item, ~sales,
  "fruit", "apple", 1,
  "fruit", "banana", 2,
  "laptop", NA_character_, 1
)

# Use unite() to combine multiple columns!
# Combine category and item into "description", separated by "_" (the default)
df %>%
  unite(col = "description", category, item)
```

    ## # A tibble: 3 x 2
    ##   description  sales
    ##   <chr>        <dbl>
    ## 1 fruit_apple      1
    ## 2 fruit_banana     2
    ## 3 laptop_NA        1

``` r
# Doesn't remove NAs by default, so turn that on to avoid "laptop_NA"
# You can separate by whatever you want, too!
df %>%
  unite(col = "description", category, item, sep = ".", na.rm = TRUE)
```

    ## # A tibble: 3 x 2
    ##   description  sales
    ##   <chr>        <dbl>
    ## 1 fruit.apple      1
    ## 2 fruit.banana     2
    ## 3 laptop           1
