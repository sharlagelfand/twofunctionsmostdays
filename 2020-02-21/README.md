2020-02-21
================

# `glue::glue()` - i know this one\!

``` r
library(glue)

fruit <- c("apple", "orange")
number <- c(1, 2)

# You might be used to using paste0 or paste to combine text and data
# But it can be hard to remember where to put the spaces and commas!
paste0("I love eating ", fruit, "s, I eat", number, "a day!")
```

    ## [1] "I love eating apples, I eat1a day!"  "I love eating oranges, I eat2a day!"

``` r
# Use glue instead to include the data inline, making it easier to read and keep track of
glue("I love eating {fruit}s, I eat {number} a day!")
```

    ## I love eating apples, I eat 1 a day!
    ## I love eating oranges, I eat 2 a day!

``` r
# You can write any R code within the {}s!
glue("I love eating {fruit}s, I eat {sample(1:10, length(fruit))} a day!")
```

    ## I love eating apples, I eat 10 a day!
    ## I love eating oranges, I eat 9 a day!

# `string::str_starts()` - new to me\!

``` r
library(stringr)

words <- c("hi i'm sharla!", "sharla.party")

# I know (and love using!) str_detect() for telling whether a word contains a pattern
str_detect(words, "sharla")
```

    ## [1] TRUE TRUE

``` r
# But I don't like writing regular expressions! 
# Who can remember the regex for whether a word starts with a pattern? Not me!
# str_starts() does the work for you!
str_starts(words, "sharla")
```

    ## [1] FALSE  TRUE
