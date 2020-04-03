2020-04-02
================

# `janitor::row_to_names()` - i know this one\!

``` r
library(janitor)
library(tibble)

# If you have spreadsheet data where the first cell is a header and the data is actually later on, it might read in something like this
df <- tribble(
  ~`...1`, ~`...2`,
  "Nintendo hardware sales in millions", NA_character_, 
  NA_character_, NA_character_,
  "console", "hardware_sales",
  "Nintendo Switch", "52.48",
  "Nintendo 3DS", "75.71",
  "Wii U", "13.56",
  "Wii", "101.63",
  "Nintendo DS", "154.02",
  "Game Boy Advance", "81.51",
  "Game Boy", "118.69",
  "Nintendo GameCube", "21.74",
  "Nintendo 64", "32.93",
  "SNES", "49.10",
  "NES", "61.91"
)

# Use row_to_names() to set the third row (the actual column names) as the variable names!
row_to_names(df, row_number = 3)
```

    ## # A tibble: 11 x 2
    ##    console           hardware_sales
    ##    <chr>             <chr>         
    ##  1 Nintendo Switch   52.48         
    ##  2 Nintendo 3DS      75.71         
    ##  3 Wii U             13.56         
    ##  4 Wii               101.63        
    ##  5 Nintendo DS       154.02        
    ##  6 Game Boy Advance  81.51         
    ##  7 Game Boy          118.69        
    ##  8 Nintendo GameCube 21.74         
    ##  9 Nintendo 64       32.93         
    ## 10 SNES              49.10         
    ## 11 NES               61.91

``` r
# Removes the row (and the rows before it) by default, but you can turn that off by setting `remove_row = FALSE` or `remove_rows_above = FALSE`
```

# `readr::parse_number()` - new to me\!

``` r
library(readr)

# If you have numbers with formatting you want to remove...
x <- c("$10.00", "25%", "Even just 1 number in text!")

# Use parse_number()!
parse_number(x)
```

    ## [1] 10 25  1

``` r
# Change locale info if  if you need
parse_number("1.000,25", locale = locale(grouping_mark = ".", decimal_mark = ","))
```

    ## [1] 1000.25

``` r
# Returns NA, throws a warning and describes issues if no number can be parsed
parse_number("No number here!")
```

    ## Warning: 1 parsing failure.
    ## row col expected          actual
    ##   1  -- a number No number here!

    ## [1] NA
    ## attr(,"problems")
    ## # A tibble: 1 x 4
    ##     row   col expected actual         
    ##   <int> <int> <chr>    <chr>          
    ## 1     1    NA a number No number here!
