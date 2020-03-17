2020-03-17
================

# `dplyr::bind_rows()` - i know this one\!

``` r
library(dplyr, warn.conflicts = FALSE)

df1 <- tribble(
  ~a, ~b,
  1, 2
)

df2 <- tribble(
  ~b, ~c,
  3, 4
)

# You can't bind together two data frames with different columns using rbind!!
rbind(df1, df2)
```

    ## Error in match.names(clabs, names(xi)): names do not match previous names

``` r
# But you can with bind_rows()!! Any missing data is just given an NA
bind_rows(df1, df2)
```

    ## # A tibble: 2 x 3
    ##       a     b     c
    ##   <dbl> <dbl> <dbl>
    ## 1     1     2    NA
    ## 2    NA     3     4

``` r
# If you have a list of data frames, use bind_rows() to combine them:
df_list <- list(df1 = df1,
                df2 = df2)

bind_rows(df_list)
```

    ## # A tibble: 2 x 3
    ##       a     b     c
    ##   <dbl> <dbl> <dbl>
    ## 1     1     2    NA
    ## 2    NA     3     4

``` r
# You can choose to have the list element name as a column, too:
bind_rows(df_list, .id = "source")
```

    ## # A tibble: 2 x 4
    ##   source     a     b     c
    ##   <chr>  <dbl> <dbl> <dbl>
    ## 1 df1        1     2    NA
    ## 2 df2       NA     3     4

# `dplyr::n_groups()` - new to me\!

``` r
library(dplyr, warn.conflicts = FALSE)

df <- tribble(
  ~id, ~date, ~store_id, ~sales,
  1, "2020-03-01", 1, 100,
  2, "2020-03-01", 2, 100,
  3, "2020-03-01", 3, 150,
  4, "2020-03-02", 1, 110,
  5, "2020-03-02", 3, 101
)

# Want information on the grouping of a data frame?
df_grouped <- df %>%
  group_by(date)

# Use is_grouped_df() to see if it's grouped
is_grouped_df(df)
```

    ## [1] FALSE

``` r
is_grouped_df(df_grouped)
```

    ## [1] TRUE

``` r
# Use n_groups to see the *number* of groups (there are two dates, so two groups)
n_groups(df_grouped)
```

    ## [1] 2

``` r
# group_vars() to get the grouping variables as a character
group_vars(df_grouped)
```

    ## [1] "date"

``` r
# and groups() to get them as a symbol
groups(df_grouped)
```

    ## [[1]]
    ## date

``` r
# and more! go explore!
```
