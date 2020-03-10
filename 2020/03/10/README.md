2020-03-10
================

# `janitor::tabyl()` - i know this one\!

``` r
library(janitor)
library(tibble)

grades <- tribble(
  ~student, ~course, ~grade,
  1, "Statistics", "A",
  2, "Statistics", "B+",
  3, "Statistics", "A-",
  1, "Calculus", "A-",
  2, "Calculus", "A-"
)

# Use tabyl to easily count a variable
grades %>%
  tabyl(grade)
```

    ##  grade n percent
    ##      A 1     0.2
    ##     A- 3     0.6
    ##     B+ 1     0.2

``` r
# You can pretty up percentages, too!
grades %>%
  tabyl(grade) %>%
  adorn_pct_formatting()
```

    ##  grade n percent
    ##      A 1   20.0%
    ##     A- 3   60.0%
    ##     B+ 1   20.0%

``` r
# And add a total row
grades %>%
  tabyl(grade) %>%
  adorn_totals("row")
```

    ##  grade n percent
    ##      A 1     0.2
    ##     A- 3     0.6
    ##     B+ 1     0.2
    ##  Total 5     1.0

``` r
# Of course, it works on more than one variable
grades %>%
  tabyl(course, grade)
```

    ##      course A A- B+
    ##    Calculus 0  2  0
    ##  Statistics 1  1  1

``` r
# Convert to percents, by row is the default:
grades %>%
  tabyl(course, grade) %>%
  adorn_percentages("row") %>%
  adorn_pct_formatting()
```

    ##      course     A     A-    B+
    ##    Calculus  0.0% 100.0%  0.0%
    ##  Statistics 33.3%  33.3% 33.3%

``` r
# Or do by col:
grades %>%
  tabyl(course, grade) %>%
  adorn_percentages("col") %>%
  adorn_pct_formatting()
```

    ##      course      A    A-     B+
    ##    Calculus   0.0% 66.7%   0.0%
    ##  Statistics 100.0% 33.3% 100.0%

``` r
# Or by the total
grades %>%
  tabyl(course, grade) %>%
  adorn_percentages("all") %>%
  adorn_pct_formatting()
```

    ##      course     A    A-    B+
    ##    Calculus  0.0% 40.0%  0.0%
    ##  Statistics 20.0% 20.0% 20.0%

``` r
# Show percents and counts
grades %>%
  tabyl(course, grade) %>%
  adorn_percentages("row") %>%
  adorn_pct_formatting() %>%
  adorn_ns("front")
```

    ##      course         A         A-        B+
    ##    Calculus 0  (0.0%) 2 (100.0%) 0  (0.0%)
    ##  Statistics 1 (33.3%) 1  (33.3%) 1 (33.3%)

# `janitor::adorn_rounding()` - new to me\!

``` r
library(janitor)
library(tibble)

usd_to_cad <- tribble(
  ~date, ~exchange_rate_close,
  "2020-03-05", 1.3404,
  "2020-03-06", 1.3421,
  "2020-03-07", 1.3424,
  "2020-03-08", 1.3599,
  "2020-03-09", 1.3664
)

# Use adorn_rounding to round numeric columns
usd_to_cad %>%
  adorn_rounding()
```

    ## # A tibble: 5 x 2
    ##   date       exchange_rate_close
    ##   <chr>                    <dbl>
    ## 1 2020-03-05                 1.3
    ## 2 2020-03-06                 1.3
    ## 3 2020-03-07                 1.3
    ## 4 2020-03-08                 1.4
    ## 5 2020-03-09                 1.4

``` r
# Defaults to one digit, but you can change it!
usd_to_cad %>%
  adorn_rounding(digits = 2)
```

    ## # A tibble: 5 x 2
    ##   date       exchange_rate_close
    ##   <chr>                    <dbl>
    ## 1 2020-03-05                1.34
    ## 2 2020-03-06                1.34
    ## 3 2020-03-07                1.34
    ## 4 2020-03-08                1.36
    ## 5 2020-03-09                1.37
