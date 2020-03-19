2020-03-19
================

# `dplyr::coalesce()` - i know this one\!

``` r
library(dplyr)

# Have a data frame with some missing values?
df <- tribble(
  ~date, ~item, ~sales, ~store,
  "2020-03-01", "apples", 1, NA_character_,
  "2020-03-01", "bananas", NA_real_, "Loblaws"
)

df
```

    ## # A tibble: 2 x 4
    ##   date       item    sales store  
    ##   <chr>      <chr>   <dbl> <chr>  
    ## 1 2020-03-01 apples      1 <NA>   
    ## 2 2020-03-01 bananas    NA Loblaws

``` r
# Use coalesce() to quickly replace them
df %>%
  mutate(
    sales = coalesce(sales, 0),
    store = coalesce(store, "Unknown")
  )
```

    ## # A tibble: 2 x 4
    ##   date       item    sales store  
    ##   <chr>      <chr>   <dbl> <chr>  
    ## 1 2020-03-01 apples      1 Unknown
    ## 2 2020-03-01 bananas     0 Loblaws

``` r
# coalesce() finds the first non-missing value, so you can use it if you want to prioritize the values from columns
tribble(
  ~id, ~x_best_method, ~x_decent_method, ~x_last_ditch_effort,
  1, 1, 1.05, 1.1,
  2, NA_real_, 2.05, 2.2,
  3, NA_real_, NA_real_, 3.3,
  4, NA_real_, NA_real_, NA_real_
) %>%
  mutate(x_estimate = coalesce(x_best_method, x_decent_method, x_last_ditch_effort, 0))
```

    ## # A tibble: 4 x 5
    ##      id x_best_method x_decent_method x_last_ditch_effort x_estimate
    ##   <dbl>         <dbl>           <dbl>               <dbl>      <dbl>
    ## 1     1             1            1.05                 1.1       1   
    ## 2     2            NA            2.05                 2.2       2.05
    ## 3     3            NA           NA                    3.3       3.3 
    ## 4     4            NA           NA                   NA         0

# `tidyr::separate_rows()` - new to me\!

``` r
library(tidyr)

# If you have a column that's delimited and actually contains multiple values, like items
df <- tribble(
  ~date, ~items,
  "2020-03-01", "apples, bananas, tofu",
  "2020-03-02", "oats, cherries, bread"
)

# Use separate_rows to separate the column into multiple rows
df %>%
  separate_rows(items)
```

    ## # A tibble: 6 x 2
    ##   date       items   
    ##   <chr>      <chr>   
    ## 1 2020-03-01 apples  
    ## 2 2020-03-01 bananas 
    ## 3 2020-03-01 tofu    
    ## 4 2020-03-02 oats    
    ## 5 2020-03-02 cherries
    ## 6 2020-03-02 bread

``` r
# Detects the separator automatically, but sometimes that's not great!
tribble(
  ~date, ~items,
  "2020-03-01; 2020-03-02", "apples, bananas, tofu; oats, cherries, bread"
) %>%
  separate_rows(date, items)
```

    ## # A tibble: 6 x 2
    ##   date  items   
    ##   <chr> <chr>   
    ## 1 2020  apples  
    ## 2 03    bananas 
    ## 3 01    tofu    
    ## 4 2020  oats    
    ## 5 03    cherries
    ## 6 02    bread

``` r
# Set it yourself:
tribble(
  ~date, ~items,
  "2020-03-01; 2020-03-02", "apples, bananas, tofu; oats, cherries, bread"
) %>%
  separate_rows(date, items, sep = "; ")
```

    ## # A tibble: 2 x 2
    ##   date       items                
    ##   <chr>      <chr>                
    ## 1 2020-03-01 apples, bananas, tofu
    ## 2 2020-03-02 oats, cherries, bread

``` r
# Chain some separate_rows together!
tribble(
  ~date, ~items,
  "2020-03-01; 2020-03-02", "apples, bananas, tofu; oats, cherries, bread"
) %>%
  separate_rows(date, items, sep = "; ") %>%
  separate_rows(items)
```

    ## # A tibble: 6 x 2
    ##   date       items   
    ##   <chr>      <chr>   
    ## 1 2020-03-01 apples  
    ## 2 2020-03-01 bananas 
    ## 3 2020-03-01 tofu    
    ## 4 2020-03-02 oats    
    ## 5 2020-03-02 cherries
    ## 6 2020-03-02 bread
