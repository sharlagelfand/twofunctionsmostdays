2020-04-06
================

# `tidyr::hoist()` - i know this one\!

``` r
library(tidyr)

# Have list-cols?
acnh <- tibble(
  item = c("Flimsy axe", "DIY for beginners", "Nook Miles Ticket", "Top 8 Stylish Hair Colors"),
  price = list(
    list(n = 800,
         units = "Bells"),
    list(n = 480,
         units = "Bells"),
    list(n = 2000,
         units = "Nook Miles"),
    list(n = 3000,
         units = "Nook Miles")
  )
)

acnh
```

    ## # A tibble: 4 x 2
    ##   item                      price           
    ##   <chr>                     <list>          
    ## 1 Flimsy axe                <named list [2]>
    ## 2 DIY for beginners         <named list [2]>
    ## 3 Nook Miles Ticket         <named list [2]>
    ## 4 Top 8 Stylish Hair Colors <named list [2]>

``` r
# Use hoist() to extract components! You can do by name:
acnh %>%
  hoist(.col = price,
        sale_price = "n",
        sale_units = "units")
```

    ## # A tibble: 4 x 3
    ##   item                      sale_price sale_units
    ##   <chr>                          <dbl> <chr>     
    ## 1 Flimsy axe                       800 Bells     
    ## 2 DIY for beginners                480 Bells     
    ## 3 Nook Miles Ticket               2000 Nook Miles
    ## 4 Top 8 Stylish Hair Colors       3000 Nook Miles

``` r
# Or by index (works on unnamed lists!)
acnh %>%
  hoist(.col = price,
        sale_price = 1)
```

    ## # A tibble: 4 x 3
    ##   item                      sale_price price           
    ##   <chr>                          <dbl> <list>          
    ## 1 Flimsy axe                       800 <named list [1]>
    ## 2 DIY for beginners                480 <named list [1]>
    ## 3 Nook Miles Ticket               2000 <named list [1]>
    ## 4 Top 8 Stylish Hair Colors       3000 <named list [1]>

``` r
# Works well on deeply nested lists, too!
acnh_deep <- tibble(
  store = "Nook Stop:",
  item = list(
    list("Top 8 Pop Hair Styles",
         price = list(n = 3000,
                      units = "Nook Miles"))
  )
)

acnh_deep
```

    ## # A tibble: 1 x 2
    ##   store      item            
    ##   <chr>      <list>          
    ## 1 Nook Stop: <named list [2]>

``` r
acnh_deep %>%
  hoist(item,
    item_name = 1,
    price = list("price", "n")
  )
```

    ## # A tibble: 1 x 4
    ##   store      item_name             price item            
    ##   <chr>      <chr>                 <dbl> <list>          
    ## 1 Nook Stop: Top 8 Pop Hair Styles  3000 <named list [1]>

# `unglue::unglue_data()` new to me\!

``` r
library(unglue)

acnh <- c(
  "Flimsy axe costs 800 bells",
  "DIY for beginners costs 480 bells",
  "Nook Miles Ticket costs 2000 Nook Miles",
  "Top 8 Stylish Hair Colors costs 3000 Nook Miles"
)

# Extract matching values using a syntax like glue::glue()!
# Byebye regex! (except you can use regex within if you want/need ok)
acnh %>%
  unglue_data("{item} costs {price} {units}")
```

    ##                        item price      units
    ## 1                Flimsy axe   800      bells
    ## 2         DIY for beginners   480      bells
    ## 3         Nook Miles Ticket  2000 Nook Miles
    ## 4 Top 8 Stylish Hair Colors  3000 Nook Miles

``` r
# Plain unglue() returns a list:
acnh %>%
  unglue("{item} costs {price} {units}")
```

    ## $`1`
    ##         item price units
    ## 1 Flimsy axe   800 bells
    ## 
    ## $`2`
    ##                item price units
    ## 2 DIY for beginners   480 bells
    ## 
    ## $`3`
    ##                item price      units
    ## 3 Nook Miles Ticket  2000 Nook Miles
    ## 
    ## $`4`
    ##                        item price      units
    ## 4 Top 8 Stylish Hair Colors  3000 Nook Miles
