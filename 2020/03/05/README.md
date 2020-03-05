2020-03-05
================

# `rtweet::search_tweets()` - i know this one\!

``` r
library(rtweet)
library(dplyr)

# Search for tweets with #TwoFunctionsMostDays hashtag!
# Only searches last 6-9 days of tweets
tfmd <- search_tweets("#TwoFunctionsMostDays", n = 25, include_rts = FALSE)

nrow(tfmd)
```

    ## [1] 19

``` r
# Comes with a *lot* of data. Probably most interesting:
tfmd %>%
  select(screen_name, created_at, text, favorite_count, retweet_count) %>%
  head()
```

    ## # A tibble: 6 x 5
    ##   screen_name  created_at          text             favorite_count retweet_count
    ##   <chr>        <dttm>              <chr>                     <int>         <int>
    ## 1 samukweku    2020-03-05 11:44:59 "inspired by @s…             22             6
    ## 2 martintburg… 2020-03-04 22:32:43 "@sharlagelfand…              3             0
    ## 3 sharlagelfa… 2020-03-04 22:13:02 "quick n easy #…            213            32
    ## 4 sharlagelfa… 2020-03-02 21:01:49 "help all of my…              9             0
    ## 5 sharlagelfa… 2020-03-03 21:44:47 "i won't get to…             54            10
    ## 6 sharlagelfa… 2020-02-29 13:43:44 "did you know t…            208            40

``` r
# Quick count of tweeters
tfmd %>%
  count(screen_name, sort = TRUE)
```

    ## # A tibble: 11 x 2
    ##    screen_name         n
    ##    <chr>           <int>
    ##  1 sharlagelfand       9
    ##  2 alexcookson         1
    ##  3 Andrew_WXY          1
    ##  4 ayushbipinpatel     1
    ##  5 FvLScience          1
    ##  6 gavin_fay           1
    ##  7 grrrck              1
    ##  8 martintburgess      1
    ##  9 RyneVanK            1
    ## 10 samukweku           1
    ## 11 thomas_mock         1

``` r
# Mean favourites/retweets
tfmd %>%
  filter(screen_name == "sharlagelfand") %>%
  summarise_at(vars(favorite_count, retweet_count), mean)
```

    ## # A tibble: 1 x 2
    ##   favorite_count retweet_count
    ##            <dbl>         <dbl>
    ## 1            147          24.1

# `purrr::set_names()` - new to me\!

``` r
library(purrr)

# You can use set_names() on a ton of different objects!

# On a data frame:
data.frame(a = 1, b = 2) %>%
  set_names(c("cat", "dog"))
```

    ##   cat dog
    ## 1   1   2

``` r
# On a list:
list("a", "b") %>%
  set_names(c("a", "b"))
```

    ## $a
    ## [1] "a"
    ## 
    ## $b
    ## [1] "b"

``` r
# On a vector:
c(1, 2) %>%
  set_names(c("a", "b"))
```

    ## a b 
    ## 1 2

``` r
# If you don't pass anything to set_names(), it names it by the contents:
list(x = c("a", "b"), y = c("c", "d")) %>%
  set_names()
```

    ## $`c("a", "b")`
    ## [1] "a" "b"
    ## 
    ## $`c("c", "d")`
    ## [1] "c" "d"

``` r
# If you pass NULL, it removes existing names:
list(x = c("a", "b"), y = c("c", "d")) %>%
  set_names(NULL)
```

    ## [[1]]
    ## [1] "a" "b"
    ## 
    ## [[2]]
    ## [1] "c" "d"

``` r
# If there are already names, you can use a function to transform the names
data.frame(a = 1, b = 2) %>%
  set_names(toupper)
```

    ##   A B
    ## 1 1 2

``` r
list(a = 1, b = 2) %>%
  set_names(paste0, "_element")
```

    ## $a_element
    ## [1] 1
    ## 
    ## $b_element
    ## [1] 2

``` r
# pssst: technically set_names() is from rlang and just imported into purrr, but loading purrr gave me %>% too, and everyone seemed to think it was from purrr already. win-win!
```
