2020-03-27
================

# `forcats::fct_reorder()` - i know this one\!

``` r
library(forcats)
library(dplyr)

nintendo <- tribble(
  ~console, ~hardware_sales_million,
  "Nintendo Switch", 52.48,
  "Nintendo 3DS", 75.71,
  "Wii U", 13.56,
  "Wii", 101.63,
  "Nintendo DS", 154.02,
  "Game Boy Advance", 81.51,
  "Game Boy", 118.69,
  "Nintendo GameCube", 21.74,
  "Nintendo 64", 32.93,
  "SNES", 49.10,
  "NES", 61.91
)

# Use fct_reorder() to reorder levels based on a variable
nintendo %>%
  mutate(console = fct_reorder(console, hardware_sales_million)) %>%
  pull(console) %>%
  levels()
```

    ##  [1] "Wii U"             "Nintendo GameCube" "Nintendo 64"      
    ##  [4] "SNES"              "Nintendo Switch"   "NES"              
    ##  [7] "Nintendo 3DS"      "Game Boy Advance"  "Wii"              
    ## [10] "Game Boy"          "Nintendo DS"

``` r
# The default is ascending order, so set to descending if you want!
nintendo %>%
  mutate(console = fct_reorder(console, hardware_sales_million, .desc = TRUE)) %>%
  pull(console) %>%
  levels()
```

    ##  [1] "Nintendo DS"       "Game Boy"          "Wii"              
    ##  [4] "Game Boy Advance"  "Nintendo 3DS"      "NES"              
    ##  [7] "Nintendo Switch"   "SNES"              "Nintendo 64"      
    ## [10] "Nintendo GameCube" "Wii U"

# `forcats::fct_lump_*()` - new to me\!

``` r
library(forcats)
library(dplyr)

nintendo <- tribble(
  ~console, ~hardware_sales_million,
  "Nintendo Switch", 52.48,
  "Nintendo 3DS", 75.71,
  "Wii U", 13.56,
  "Wii", 101.63,
  "Nintendo DS", 154.02,
  "Game Boy Advance", 81.51,
  "Game Boy", 118.69,
  "Nintendo GameCube", 21.74,
  "Nintendo 64", 32.93,
  "SNES", 49.10,
  "NES", 61.91
)

# Use fct_lump_n() to lump together everything except the top 5
# Supply w (weight) because the frequency is pre-aggregated
nintendo %>%
  mutate(console = fct_lump_n(console, n = 5, w = hardware_sales_million))
```

    ## # A tibble: 11 x 2
    ##    console          hardware_sales_million
    ##    <fct>                             <dbl>
    ##  1 Other                              52.5
    ##  2 Nintendo 3DS                       75.7
    ##  3 Other                              13.6
    ##  4 Wii                               102. 
    ##  5 Nintendo DS                       154. 
    ##  6 Game Boy Advance                   81.5
    ##  7 Game Boy                          119. 
    ##  8 Other                              21.7
    ##  9 Other                              32.9
    ## 10 Other                              49.1
    ## 11 Other                              61.9

``` r
# Use fct_lump_min() to lump together everything that sold less than 50 million units
# Rename the other level via "other_level"
nintendo %>%
  mutate(console = fct_lump_min(console, min = 50, w = hardware_sales_million, other_level = "Other Consoles"))
```

    ## # A tibble: 11 x 2
    ##    console          hardware_sales_million
    ##    <fct>                             <dbl>
    ##  1 Nintendo Switch                    52.5
    ##  2 Nintendo 3DS                       75.7
    ##  3 Other Consoles                     13.6
    ##  4 Wii                               102. 
    ##  5 Nintendo DS                       154. 
    ##  6 Game Boy Advance                   81.5
    ##  7 Game Boy                          119. 
    ##  8 Other Consoles                     21.7
    ##  9 Other Consoles                     32.9
    ## 10 Other Consoles                     49.1
    ## 11 NES                                61.9

``` r
# Use fct_lump_prop() to lump together everything that is less than 10% of total sales 
nintendo %>%
  mutate(console = fct_lump_prop(console, prop = 0.20, w = hardware_sales_million))
```

    ## # A tibble: 11 x 2
    ##    console     hardware_sales_million
    ##    <fct>                        <dbl>
    ##  1 Other                         52.5
    ##  2 Other                         75.7
    ##  3 Other                         13.6
    ##  4 Other                        102. 
    ##  5 Nintendo DS                  154. 
    ##  6 Other                         81.5
    ##  7 Other                        119. 
    ##  8 Other                         21.7
    ##  9 Other                         32.9
    ## 10 Other                         49.1
    ## 11 Other                         61.9
