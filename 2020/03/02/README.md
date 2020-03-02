2020-03-02
================

# `dplyr::group_split()` - i know this one\!

``` r
library(dplyr)

releases_70s <- tribble(
  ~band, ~album, ~us_chart_peak,
  "Talking Heads", "Talking Heads: 77", 97,
  "Talking Heads", "Fear of Music", 21,
  "Talking Heads", "More Songs About Buildings and Food", 29,
  "Devo", "Q: Are We Not Men? A: We Are Devo!", 78,
  "Devo", "Duty Now for the Future", 73
)

# Use group_split() to split a grouped data frame into a list
releases_70s %>%
  group_by(band) %>%
  group_split()
```

    ## [[1]]
    ## # A tibble: 2 x 3
    ##   band  album                              us_chart_peak
    ##   <chr> <chr>                                      <dbl>
    ## 1 Devo  Q: Are We Not Men? A: We Are Devo!            78
    ## 2 Devo  Duty Now for the Future                       73
    ## 
    ## [[2]]
    ## # A tibble: 3 x 3
    ##   band          album                               us_chart_peak
    ##   <chr>         <chr>                                       <dbl>
    ## 1 Talking Heads Talking Heads: 77                              97
    ## 2 Talking Heads Fear of Music                                  21
    ## 3 Talking Heads More Songs About Buildings and Food            29
    ## 
    ## attr(,"ptype")
    ## # A tibble: 0 x 3
    ## # … with 3 variables: band <chr>, album <chr>, us_chart_peak <dbl>

``` r
# You can specify the grouping in group_split() instead, and if you want to drop the grouping variables, set keep = FALSE
releases_70s %>%
  group_split(band, keep = FALSE)
```

    ## [[1]]
    ## # A tibble: 2 x 2
    ##   album                              us_chart_peak
    ##   <chr>                                      <dbl>
    ## 1 Q: Are We Not Men? A: We Are Devo!            78
    ## 2 Duty Now for the Future                       73
    ## 
    ## [[2]]
    ## # A tibble: 3 x 2
    ##   album                               us_chart_peak
    ##   <chr>                                       <dbl>
    ## 1 Talking Heads: 77                              97
    ## 2 Fear of Music                                  21
    ## 3 More Songs About Buildings and Food            29
    ## 
    ## attr(,"ptype")
    ## # A tibble: 0 x 2
    ## # … with 2 variables: album <chr>, us_chart_peak <dbl>

# `dplyr::group_map()` - new to me\!

``` r
library(dplyr)

releases_70s <- tribble(
  ~band, ~album, ~us_chart_peak,
  "Talking Heads", "Talking Heads: 77", 97,
  "Talking Heads", "Fear of Music", 21,
  "Talking Heads", "More Songs About Buildings and Food", 29,
  "Devo", "Q: Are We Not Men? A: We Are Devo!", 78,
  "Devo", "Duty Now for the Future", 73
)

# Use group_map() just like purrr::map() but to split a data frame into a list by groups, and apply a function to that list! Bonus: no loading purrr required!
releases_70s %>%
  group_by(band) %>%
  group_map(~ glue::glue("'{.x[['album']]}' hit {.x[['us_chart_peak']]} in the US charts!"))
```

    ## [[1]]
    ## 'Q: Are We Not Men? A: We Are Devo!' hit 78 in the US charts!
    ## 'Duty Now for the Future' hit 73 in the US charts!
    ## 
    ## [[2]]
    ## 'Talking Heads: 77' hit 97 in the US charts!
    ## 'Fear of Music' hit 21 in the US charts!
    ## 'More Songs About Buildings and Food' hit 29 in the US charts!

``` r
# group_map() has `keep = FALSE` by default - set it TRUE if you need it!
releases_70s %>%
  group_by(band) %>%
  group_map(~ glue::glue("{.x[['band']]}'s '{.x[['album']]}' hit {.x[['us_chart_peak']]} in the US charts!"), keep = TRUE)
```

    ## [[1]]
    ## Devo's 'Q: Are We Not Men? A: We Are Devo!' hit 78 in the US charts!
    ## Devo's 'Duty Now for the Future' hit 73 in the US charts!
    ## 
    ## [[2]]
    ## Talking Heads's 'Talking Heads: 77' hit 97 in the US charts!
    ## Talking Heads's 'Fear of Music' hit 21 in the US charts!
    ## Talking Heads's 'More Songs About Buildings and Food' hit 29 in the US charts!
