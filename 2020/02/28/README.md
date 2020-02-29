2020-02-28
================

# `fs::dir_tree()` - i know this one\!

``` r
library(fs)

# Use dir_tree to nicely print and format your directory contents!
dir_tree()
```

    ## .
    ## ├── README.Rmd
    ## ├── README.md
    ## ├── fs-dir_tree.png
    ## └── fs-path_has_parent.png

``` r
# You can change the directory to use and the number of levels to recurse!
# Setting recurse to 0 means it shows the files in the directory
# but not any files in sub-directories, like 2020
dir_tree("/Users/sharla/github/twofunctionsmostdays", recurse = 0)
```

    ## /Users/sharla/github/twofunctionsmostdays
    ## ├── 2020
    ## ├── DESCRIPTION
    ## ├── R
    ## ├── README.md
    ## ├── ideas
    ## └── twofunctionsmostdays.Rproj

``` r
# If you set it to 1, it'll show the content in those directories too
dir_tree("/Users/sharla/github/twofunctionsmostdays", recurse = 1)
```

    ## /Users/sharla/github/twofunctionsmostdays
    ## ├── 2020
    ## │   └── 02
    ## ├── DESCRIPTION
    ## ├── R
    ## │   └── functions.R
    ## ├── README.md
    ## ├── ideas
    ## └── twofunctionsmostdays.Rproj

``` r
# And so on!
```

``` r
# If you're using RMarkdown, set `comment = NA` in the chunk options to just show the directory without any ##
dir_tree()
```

    .
    ├── README.Rmd
    ├── README.md
    ├── fs-dir_tree.png
    └── fs-path_has_parent.png

# `fs::path_split()` - new to me\!

``` r
library(fs)

# Take two file paths
dir <- "/Users/sharla/github/"
subdir <- "/Users/sharla/github/twofunctionsmostdays/"

# Check if one path is the other's parent
path_has_parent(path = subdir, parent = dir)
```

    ## [1] TRUE

``` r
# Doesn't have to be the immediate parent, either! Grandparents too B)
path_has_parent(path = subdir, parent = "/Users/sharla/")
```

    ## [1] TRUE

``` r
# But one path's child is not its parent (duh)
path_has_parent(path = dir, parent = subdir)
```

    ## [1] FALSE

``` r
# This is all theoretical - the paths don't have to actually exist!
fake_path <- paste0(
  subdir,
  paste0(sample(letters, 5), collapse = "")
)

fake_path
```

    ## [1] "/Users/sharla/github/twofunctionsmostdays/kvmga"

``` r
path_has_parent(path = fake_path, parent = subdir)
```

    ## [1] TRUE
