2020-04-07
================

# `purrr::map_dfr()` - i know this one\!

``` r
library(purrr)
library(dplyr)

acnh_critters <- list(
  Fish = tribble(
    ~name, ~location,
    "Crucian carp", "River",
    "Dace", "River",
    "Dab", "Sea"),
  Bug = tribble(
    ~name, ~location,
    "Common butterfly", "Flying",
    "Bagworm", "Shaking Trees")
)

# Use map_dfr() to apply a function to the list then row-bind the results
# Apply the function using regulat purrr syntax - many options!
acnh_critters %>%
  map_dfr(count, location)
```

    ## # A tibble: 4 x 2
    ##   location          n
    ##   <chr>         <int>
    ## 1 River             2
    ## 2 Sea               1
    ## 3 Flying            1
    ## 4 Shaking Trees     1

``` r
# Use the .id argument to assign the list element name to a column
acnh_critters %>%
  map_dfr(count, location, .id = "type")
```

    ## # A tibble: 4 x 3
    ##   type  location          n
    ##   <chr> <chr>         <int>
    ## 1 Fish  River             2
    ## 2 Fish  Sea               1
    ## 3 Bug   Flying            1
    ## 4 Bug   Shaking Trees     1

``` r
# Also useful if you have a list of things you want to convert to tibbles!
list(
  Fish = c("Crucian carp", "Dace", "Dab"),
  Bug = c("Common butterfly", "Bagworm")
  ) %>%
  map_dfr(~ as_tibble(.x) %>% rename(name = value), .id = "type")
```

    ## # A tibble: 5 x 2
    ##   type  name            
    ##   <chr> <chr>           
    ## 1 Fish  Crucian carp    
    ## 2 Fish  Dace            
    ## 3 Fish  Dab             
    ## 4 Bug   Common butterfly
    ## 5 Bug   Bagworm

# `purrr::keep()` - new to me\!

``` r
library(purrr)

acnh_critters <- list(
  Fish = tribble(
    ~name, ~location,
    "Crucian carp", "River",
    "Dace", "River",
    "Dab", "Sea"
  ),

  Bug = tribble(
    ~name, ~location,
    "Common butterfly", "Flying",
    "Bagworm", "Shaking Trees"
  )
)

# Use keep() on a list or vector to keep elements matching a specific criteria
acnh_critters %>%
  keep(~ nrow(.x) == 3)
```

    ## $Fish
    ## # A tibble: 3 x 2
    ##   name         location
    ##   <chr>        <chr>   
    ## 1 Crucian carp River   
    ## 2 Dace         River   
    ## 3 Dab          Sea

``` r
# discard() is the inverse!
acnh_critters %>%
  discard(~ nrow(.x) == 3)
```

    ## $Bug
    ## # A tibble: 2 x 2
    ##   name             location     
    ##   <chr>            <chr>        
    ## 1 Common butterfly Flying       
    ## 2 Bagworm          Shaking Trees

``` r
# compact() is a special case of discard() that removes NULL or zero length elements
list(a = 1, b = NULL, c = character()) %>%
  compact()
```

    ## $a
    ## [1] 1
