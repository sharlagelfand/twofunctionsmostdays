2020-03-31
================

# `lubridate::ymd()` - i know this one\!

``` r
library(lubridate)

# If you want to parse character dates/datetimes into a date that R can use
# as.Date() doesn't always know what to do
as.Date("20/01/01")
```

    ## [1] "0020-01-01"

``` r
# Use ymd() (year month day) and friends!
ymd("20/01/01")
```

    ## [1] "2020-01-01"

``` r
# Got a weird order? All good!
mdy(c("12-01-20", "06-06-06"))
```

    ## [1] "2020-12-01" "2006-06-06"

``` r
dym("12-12-12")
```

    ## [1] "2012-12-12"

``` r
# Works with times too!
ymd_hms("2020-01-01 01:00:00")
```

    ## [1] "2020-01-01 01:00:00 UTC"

``` r
mdy_h("06/12/20 01") 
```

    ## [1] "2020-06-12 01:00:00 UTC"

``` r
# Errors if that formatting doesn't make sense or isn't possible, which is good!
ymd("2020-24-06")
```

    ## Warning: All formats failed to parse. No formats found.

    ## [1] NA

# `lubridate::stamp()` - new to me\!

``` r
library(lubridate, warn.conflicts = FALSE)

dates <- ymd(c("2020-01-01", "2020-03-30"))

# Use stamp() to generate date formatting based on a template you supply
# It creates a *function* that applies the formatting
stamp("June 1, 2020")
```

    ## Multiple formats matched: "June %Om, %Y"(1), "%Om %d, %Y"(1), "%B %d, %Y"(1), "June %m, %Y"(1)

    ## Using: "%B %d, %Y"

    ## function (x, locale = "en_CA.UTF-8") 
    ## {
    ##     {
    ##         old_lc_time <- Sys.getlocale("LC_TIME")
    ##         if (old_lc_time != locale) {
    ##             on.exit(Sys.setlocale("LC_TIME", old_lc_time))
    ##             Sys.setlocale("LC_TIME", locale)
    ##         }
    ##     }
    ##     format(x, format = "%B %d, %Y")
    ## }
    ## <environment: 0x7f8c05e3eb68>

``` r
# Then use that function on dates
stamp("June 1, 2020")(dates)
```

    ## Multiple formats matched: "June %Om, %Y"(1), "%Om %d, %Y"(1), "%B %d, %Y"(1), "June %m, %Y"(1)
    ## Using: "%B %d, %Y"

    ## [1] "January 01, 2020" "March 30, 2020"

``` r
# The informative messages are great but kind of annoying. 
# Once you know the function works as you want, you can silence them:
stamp("June 1, 2020", quiet = TRUE)(dates)
```

    ## [1] "January 01, 2020" "March 30, 2020"

``` r
# The template can include more than just the date components
# Easter egg: that's my birthday
stamp("This report was updated on the 24 day of June in 1991", quiet = TRUE)(dates)
```

    ## [1] "This report was updated on the 01 day of January in 2020"
    ## [2] "This report was updated on the 30 day of March in 2020"

``` r
# It can extract the day of the week :O so smart
stamp("January 2, 2020 was a Thursday", quiet = TRUE)(dates)
```

    ## [1] "January 01, 2020 was a Wednesday" "March 30, 2020 was a Monday"
