2020-03-25
================

# `praise::praise()` - i know this one\!

``` r
library(praise)

# We all need some positive energy in our days, right?
praise()
```

    ## [1] "You are smashing!"

``` r
praise()
```

    ## [1] "You are best!"

``` r
# Customize your own!
praise("Ya done good, you ${adjective} human being!")
```

    ## [1] "Ya done good, you praiseworthy human being!"

``` r
praise("Oh ${EXCLAMATION} the code you write is truly ${ADJECTIVE}")
```

    ## [1] "Oh HURRAY the code you write is truly DANDY"

# `goodshirt::soul_squad()` - new to me\!

``` r
# Available on github: devtools::install_github("adam-gruer/goodshirt")
library(goodshirt)

# Use soul_squad() to get a quote from a member of the soul squad
# Probably Chidi, Eleanor, Jason, or Tahani?
soul_squad()
```

    ## 
    ##  There really is an afterlife. I can't wait to have breakfast with Kant, and lunch with Michel Foucault, and then have dinner with Kant again so we can talk about what came up at breakfast! 
    ## 
    ##  ~ Chidi

``` r
# Have a favourite character? Call on them directly!
janet()
```

    ## 
    ##  Fun fact: Mathematically, it's equally likely to either im- or ex-plode. 
    ## 
    ##  ~ Janet

``` r
# Need some ridiculousness in your day? Surely Derek can supply
derek()
```

    ## 
    ##  Derek! 
    ## 
    ##  ~ Derek

``` r
# Want some namedropping?
tahani()
```

    ## 
    ##  Don't mind me. I'm just dropping off my afternoon gloves and picking up my early evening gloves. 
    ## 
    ##  ~ Tahani

``` r
# Bisexual energy?
eleanor()
```

    ## 
    ##  Oh, so now I'm supposed to be nice and make friends and treat her with mutual respect? 
    ## 
    ##  ~ Eleanor

``` r
# And so on!
```
