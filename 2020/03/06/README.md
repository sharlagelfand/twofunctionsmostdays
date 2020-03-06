2020-03-06
================

# `dplyr::summarise_at()` - i know this one\!

``` r
library(dplyr)

df <- tribble(
  ~date,        ~temperature, ~precipitation, ~humidity,
  "2020-03-06", 3,            0.60,           0.76,
  "2020-03-07", 3,               0,           0.57,
  "2020-03-08", 9,               0,           0.57,
  "2020-03-09", 11,           0.30,           0.69
)

# Use summarise_at() to summarise variables by referring to them by name
df %>%
  summarise_at(vars(temperature, precipitation), mean)
```

    ## # A tibble: 1 x 2
    ##   temperature precipitation
    ##         <dbl>         <dbl>
    ## 1         6.5         0.225

``` r
# If you want to use more than one summary function, pass a list of functions:
df %>%
  summarise_at(vars(temperature, precipitation), list(mean = mean, max = max))
```

    ## # A tibble: 1 x 4
    ##   temperature_mean precipitation_mean temperature_max precipitation_max
    ##              <dbl>              <dbl>           <dbl>             <dbl>
    ## 1              6.5              0.225              11               0.6

``` r
# Use summarise_if() to summarise variables meeting a specific criteria:
df %>%
  summarise_if(is.numeric, min)
```

    ## # A tibble: 1 x 3
    ##   temperature precipitation humidity
    ##         <dbl>         <dbl>    <dbl>
    ## 1           3             0    0.570

``` r
# Use summarise_all() to summarise all variables!
df %>%
  summarise_all(as.character)
```

    ## # A tibble: 4 x 4
    ##   date       temperature precipitation humidity
    ##   <chr>      <chr>       <chr>         <chr>   
    ## 1 2020-03-06 3           0.6           0.76    
    ## 2 2020-03-07 3           0             0.57    
    ## 3 2020-03-08 9           0             0.57    
    ## 4 2020-03-09 11          0.3           0.69

``` r
# mutate() versions exist too!
```

# `dplyr::across()` - new to me\!

``` r
library(dplyr)
packageVersion("dplyr") # I'm on dev! Install from https://github.com/tidyverse/dplyr
```

    ## [1] '0.8.99.9000'

``` r
df <- tribble(
  ~date,        ~temperature, ~precipitation, ~humidity,
  "2020-03-06", 3,            0.60,           0.76,
  "2020-03-07", 3,               0,           0.57,
  "2020-03-08", 9,               0,           0.57,
  "2020-03-09", 11,           0.30,           0.69
)

# Sorry, but the summarise_() and mutate_() scoped functions are cancelled!
# Let's use across() instead :)

# Refer to variables by name using c() instead of vars():
df %>%
  summarise(across(c(temperature, precipitation), mean))
```

    ## # A tibble: 1 x 2
    ##   temperature precipitation
    ##         <dbl>         <dbl>
    ## 1         6.5         0.225

``` r
# To summarise variables meeting a specific condition:
df %>%
  summarise(across(is.numeric, max))
```

    ## # A tibble: 1 x 3
    ##   temperature precipitation humidity
    ##         <dbl>         <dbl>    <dbl>
    ## 1          11           0.6     0.76

``` r
# Pass multiple functions the same way!
df %>%
  summarise(across(is.numeric, list(min = min, max = max)))
```

    ## # A tibble: 1 x 6
    ##   temperature_min temperature_max precipitation_m… precipitation_m… humidity_min
    ##             <dbl>           <dbl>            <dbl>            <dbl>        <dbl>
    ## 1               3               0            0.570               11          0.6
    ## # … with 1 more variable: humidity_max <dbl>

``` r
# You can control how the output is named, too!!!!
df %>%
  summarise(across(is.numeric, min, names = "min_{col}"))
```

    ## # A tibble: 1 x 3
    ##   min_temperature min_precipitation min_humidity
    ##             <dbl>             <dbl>        <dbl>
    ## 1               3                 0        0.570

``` r
df %>%
  summarise(across(c(temperature, humidity), list(mean = mean, sd = sd), names = "{fn}_of_{col}"))
```

    ## # A tibble: 1 x 4
    ##   mean_of_temperature sd_of_temperature mean_of_humidity sd_of_humidity
    ##                 <dbl>             <dbl>            <dbl>          <dbl>
    ## 1                 6.5             0.648             4.12         0.0939

``` r
# The default is to summarise everything (like summarise_all)
# Make sure to specify the function under the `fns` argument if you want that
df %>%
  summarise(across(fns = as.character))
```

    ## # A tibble: 4 x 4
    ##   date       temperature precipitation humidity
    ##   <chr>      <chr>       <chr>         <chr>   
    ## 1 2020-03-06 3           0.6           0.76    
    ## 2 2020-03-07 3           0             0.57    
    ## 3 2020-03-08 9           0             0.57    
    ## 4 2020-03-09 11          0.3           0.69

``` r
# otherwise it'll try to pass it to the first argument, `cols`!
df %>%
  summarise(across(as.character))
```

    ## Error: Result 1 must be a single logical, not a character vector of length 4
