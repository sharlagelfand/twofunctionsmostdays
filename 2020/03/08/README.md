2020-03-08
================

# `lubridate::dst()` - i know this one\!

``` r
library(lubridate)

# Use dst() to check whether a date is during daylight savings
dst(ymd("2020-03-09", tz = "America/Toronto"))
```

    ## [1] TRUE

``` r
dst(ymd("2020-03-07", tz = "America/Toronto"))
```

    ## [1] FALSE

``` r
# What about the date it changes?
# The date is treated as midnight, which isn't daylight savings time yet. 
dst(ymd("2020-03-08", tz = "America/Toronto"))
```

    ## [1] FALSE

``` r
# Use a datetime for more precision
dst(ymd_hms("2020-03-08 01:00:00", tz = "America/Toronto"))
```

    ## [1] FALSE

``` r
dst(ymd_hms("2020-03-08 03:00:00", tz = "America/Toronto"))
```

    ## [1] TRUE

``` r
# And if the time doesn't exist, you'll get an unknown:
dst(ymd_hms("2020-03-08 02:00:00", tz = "America/Toronto"))
```

    ## Warning: 1 failed to parse.

    ## [1] NA

``` r
# Of course, this is timezone dependent - not everywhere has daylight savings!
dst(ymd("2020-03-07", tz = "America/Phoenix"))
```

    ## [1] FALSE

``` r
dst(ymd("2020-03-09", tz = "America/Phoenix"))
```

    ## [1] FALSE

# `lubridate::dhours()` - new to me\!

``` r
library(lubridate)

d <- ymd_hms("2020-03-08 00:00:00", tz = "America/Toronto")

# You can add time to a datetime with hours:
d + hours(1)
```

    ## [1] "2020-03-08 01:00:00 EST"

``` r
# But if you just try to add hours to a date that crosses over daylight savings, it won't work as expected:
d + hours(2)
```

    ## [1] NA

``` r
# 2am on 2020-03-08 doesn't happen because of daylight savings - it skips right to 3am

# And technically, this is wrong, because 3 hours after midnight on the date of daylight savings should be 4am
d + hours(3)
```

    ## [1] "2020-03-08 03:00:00 EDT"

``` r
# Use dhours() to add time in a way that is consistent with daylight savings:
d + dhours(2)
```

    ## [1] "2020-03-08 03:00:00 EDT"

``` r
d + dhours(3)
```

    ## [1] "2020-03-08 04:00:00 EDT"

``` r
# The respective functins for weeks, days, minutes, seconds exist too
ymd_hms("2020-03-07 02:25:00", tz = "America/Toronto") + ddays(1)
```

    ## [1] "2020-03-08 03:25:00 EDT"

``` r
ymd_hms("2020-03-08 01:59:20", tz = "America/Toronto") + dminutes(1)
```

    ## [1] "2020-03-08 03:00:20 EDT"
