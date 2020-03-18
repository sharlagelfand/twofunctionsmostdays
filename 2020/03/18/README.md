2020-03-18
================

# `rversions::r_oldrel()` - i know this one\!

``` r
library(rversions)

# When you submit a package to CRAN you need to say what environments and R versions you checked the package on
# If you use Travis-CI, the versions are called oldrel and release - but who can keep track of what those actually are?!

# Use r_oldrel() to see what version oldrel (the old release) is
r_oldrel()
```

    ##     version                date    nickname
    ## 112   3.5.3 2019-03-11 08:04:49 Great Truth

``` r
# r_release() tells you what the current release is
r_release()
```

    ##     version                date             nickname
    ## 116   3.6.3 2020-02-29 08:05:16 Holding the Windsock

# `rversions::r_versions()` - new to me\!

``` r
library(rversions)

# r_versions() lists all R versions!
versions <- r_versions()
head(versions)
```

    ##   version                date nickname
    ## 1    0.60 1997-12-04 08:47:58     <NA>
    ## 2    0.61 1997-12-21 13:09:22     <NA>
    ## 3  0.61.1 1998-01-10 00:31:55     <NA>
    ## 4  0.61.2 1998-03-14 19:25:55     <NA>
    ## 5  0.61.3 1998-05-02 07:58:17     <NA>
    ## 6    0.62 1998-06-14 12:56:20     <NA>

``` r
# When did the nicknames start?
# (psst: they're all Peanuts references https://livefreeordichotomize.com/2017/09/28/r-release-names/)
library(dplyr)
versions %>%
  filter(!is.na(nickname)) %>%
  filter(date == min(date))
```

    ##   version                date      nickname
    ## 1  2.14.0 2011-10-31 08:09:09 Great Pumpkin
