2020-03-03
================

# `tibble::new_tibble()` - i know this one\!

``` r
library(tibble)

# Create an S3 subclass of tibble using new_tibble()
new_my_tibble <- function(tibble = tibble::tibble()) {
  tibble::new_tibble(
    tibble, # The tibble object
    nrow = nrow(tibble), # Number of rows which is a required argument
    ncol = ncol(tibble), # An additional attribute I want to pass, for printing!
    class = "my_tibble" # The tibble subclass
  )
}

# Create a print method for the subclass "my_tibble" that prints the number of columns
# An S3 method is a special type of function with the naming convention generic.class
# Here, "print" is the generic and "my_tibble" is the class
print.my_tibble <- function(x, ...) {
  cat("A tibble with", attr(x, "ncol"), "columns \n")
  NextMethod(x) # Use the next print method for x, which will be the print method for a regular tibble
}

# Create a tibble to see how it works!
df <- tibble(x = 1, y = 2)

# It's a regular tibble, so normal printing:
df
```

    ## # A tibble: 1 x 2
    ##       x     y
    ##   <dbl> <dbl>
    ## 1     1     2

``` r
# See its S3 classes using the sloop package:
library(sloop)

s3_class(df)
```

    ## [1] "tbl_df"     "tbl"        "data.frame"

``` r
# Making it a "my_tibble" to take advantage of our print method
my_df <- new_my_tibble(df)

my_df
```

    ## A tibble with 2 columns 
    ## # A tibble: 1 x 2
    ##       x     y
    ##   <dbl> <dbl>
    ## 1     1     2

``` r
# See that it has the "my_tibble" subclass
s3_class(my_df)
```

    ## [1] "my_tibble"  "tbl_df"     "tbl"        "data.frame"

# `sloop::s3_dispatch()` - new to me\!

``` r
# What does a data.frame look like when it's printed?
df <- data.frame(x = 1)

df
```

    ##   x
    ## 1 1

``` r
# Use sloop's s3_dispatch() to list all possible methods that might be "dispatched" by calling the generic print() on df
library(sloop)
s3_dispatch(print(df))
```

    ## => print.data.frame
    ##  * print.default

``` r
# => means the method is called
# * means the method exists, but it isn't used

# What if we call print() on a tibble instead? What does it look like?
library(tibble)

df_t <- as_tibble(df)

df_t
```

    ## # A tibble: 1 x 1
    ##       x
    ##   <dbl>
    ## 1     1

``` r
# A tibble prints differently than a data.frame, so it must have a different method!
s3_dispatch(print(df_t))
```

    ##    print.tbl_df
    ## => print.tbl
    ##  * print.data.frame
    ##  * print.default

``` r
# The method used here is print.tbl, but print.data.frame and print.default also exist and aren't used.
# There's nothing beside print.tbl_df (and it's greyed out in a regular RStudio console), which means there *is no* print method for a tbl_df

# s3_dispatch() goes through the tibble's S3 classes to find a print method.
# tbl_df doesn't have one, so it moves on to tbl, finds print.tbl, and uses that!
s3_class(df_t)
```

    ## [1] "tbl_df"     "tbl"        "data.frame"
