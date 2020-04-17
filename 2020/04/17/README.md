2020-04-17
================

# `usethis::ui_done()` - i know this one\!

``` r
library(usethis)

# Want to print friendly output to a user in a package (or to yourself in your own code?)
# The usethis ui_*() functions are perfect!

# Use ui_done() when something is done, like a file saved
ui_done("File saved at...")
```

    ## ✓ File saved at...

``` r
# ui_todo() is useful when you need your user to pay attention and do something!
ui_todo("Changes have been made, please review them!")
```

    ## ● Changes have been made, please review them!

``` r
# ui_oops() when something went wrong
ui_oops("That should not have happened")
```

    ## x That should not have happened

``` r
# Yes, even use {glue style} formatting to embed code!
start <- Sys.time()
ui_info("It took {Sys.time() - start} seconds to get to this command!")
```

    ## ℹ It took 0.0013129711151123 seconds to get to this command!

``` r
# There's more, and ones to help you format paths or code!
ui_done("File saved at {ui_path('res.rds')}")
```

    ## ✓ File saved at 'res.rds'

``` r
ui_oops("Failed to calculate {ui_code('variable')}")
```

    ## x Failed to calculate `variable`

# `usethis::ui_yeah()` - new to me\!

``` r
library(usethis)

# Writing a package and need your user to make a yes/no decision?
# Use ui_yeah()! It returns TRUE when your user selects one of the yes options, and FALSE when they select one of the no's (or cancel!)
overwrite <- ui_yeah("Want to overwrite that file?")
# > Want to overwrite that file?

# > 1: Yeah
# > 2: Nope
# > 3: No way

# > Selection: 3

overwrite
# > TRUE

# Defaults to 1 yes option, and 2 no's, but you can change that (and change the options themselves!)
overwrite <- ui_yeah("Want to overwrite that file?",
  yes = c("Oh hell yeah", "You know it", "Yeah clearly"),
  no = c("Broooo no way", "Fuck no", "Ok but no"),
  n_yes = 1,
  n_no = 1
)
# > Want to overwrite that file?

# > 1: Fuck no
# > 2: Yeah clearly

# > Selection: 1

overwrite
#> FALSE

# The complimentary ui_nope() takes the logical opposite of ui_yeah(), useful if you want TRUE for no and FALSE for yes!
```
