2020-02-29
================

# ``lubridate::`%m+%` `` - i know this one\!

``` r
library(lubridate)

# You can use months() to easily add a month to a date
as_date("2020-01-01") + months(1)
```

    ## [1] "2020-02-01"

``` r
# But what happens when that day of the month doesn't exist in the next month? 
# In case you didn't know, there's no February 31 (ever)!
as_date("2020-01-31") + months(1)
```

    ## [1] NA

``` r
# And 2019 wasn't a leap year, so there's no February 29:
as_date("2019-01-29") + months(1)
```

    ## [1] NA

``` r
# Use %m+% instead to automatically account for the last day of the month
as_date("2020-01-31") %m+% months(1)
```

    ## [1] "2020-02-29"

``` r
# The subtraction version exists, of course
as_date("2020-10-31") %m-% months(1)
```

    ## [1] "2020-09-30"

``` r
# And it works for years!
as_date("2020-02-29") %m+% years(1)
```

    ## [1] "2021-02-28"

# `lubridate::leap_year()` - new to me\!

``` r
library(lubridate)

y <- c(2010, 2019, 2020, 2021, 2024)

# Is this year a leap year?
leap_year(y)
```

    ## [1] FALSE FALSE  TRUE FALSE  TRUE

``` r
# You can pass a date, too, not just a year!
dates <- as_date(c("2019-01-01", "2020-01-01", "2020-02-29"))

leap_year(dates)
```

    ## [1] FALSE  TRUE  TRUE
