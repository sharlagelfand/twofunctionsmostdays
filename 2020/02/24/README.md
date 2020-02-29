2020-02-24
================

# `emo::ji()` - i know this one\!

``` r
library(emo) # Available on GitHub only: https://github.com/hadley/emo

# Easily insert emojis into R (and especially into RMarkdown!)
emo::ji("yum")
```

    ## 😋

``` r
# I like to namespace it (using emo::) since it spells "emoji" (do you want me to explain all the jokes?)
# but you can just use ji() too!
ji("white_check_mark")
```

    ## ✅

# `janitor::excel_numeric_to_date()` - new to me\!

``` r
library(janitor)

# Imagine (it's hard, I know) that you imported some data into R but couldn't quite save it from getting Excel™ed
# And so you have the number of days since January 0, 1900
dates <- c(43470, 42369, 42375, 41300)

# Use excel_numeric_to_date() to recover as dates!
excel_numeric_to_date(dates)
```

    ## [1] "2019-01-05" "2015-12-31" "2016-01-06" "2013-01-26"
