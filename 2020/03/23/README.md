2020-03-23
================

# `stringr::str_squish()` - i know this one\!

``` r
library(stringr)

# Use str_squish() to remove any leading, trailing, or excess whitespace
str_squish(" got some leading and some trailing space")
```

    ## [1] "got some leading and some trailing space"

``` r
str_squish(" excess    whitespace in a string be gone!")
```

    ## [1] "excess whitespace in a string be gone!"

# `stringr::str_dup()` - new to me\!

``` r
library(stringr)

# Duplicate a string multiple times using str_dup()
str_dup("banana", 5)
```

    ## [1] "bananabananabananabananabanana"

``` r
# Vectorized to work on multiple strings - either with different number of duplications
str_dup(c("apple", "banana"), c(2, 3))
```

    ## [1] "appleapple"         "bananabananabanana"

``` r
# Or the same!
str_dup(c("apple", "banana"), 3)
```

    ## [1] "appleappleapple"    "bananabananabanana"
