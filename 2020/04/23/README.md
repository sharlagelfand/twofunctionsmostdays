2020-04-23
================

# `kableExtra::row_spec()` - i know this one\!

``` r
library(kableExtra)
library(tibble)

nintendo_sales <- tribble(
  ~console, ~hardware_sales, ~software_sales,
  "Nintendo Switch", 52.48, 310.65,
  "Wii", 101.63, 921.41,
  "Nintendo DS", 154.02, 948.69,
  "Game Boy", 118.69, 501.11,
  "Nintendo 64", 32.93, 224.97,
  "SNES", 49.1, 379.06,
  "Other Consoles", 254.43, 1571.23,
  "Total", 763.28, 4857.12
)

# Apply formatting to specified rows via row_spec()!
nintendo_sales %>%
  kable(col.names = c("Console", "Hardware", "Software")) %>%
  row_spec(
    row = nrow(nintendo_sales), # Formatting the last row
    bold = TRUE
  )
```

<table>

<thead>

<tr>

<th style="text-align:left;">

Console

</th>

<th style="text-align:right;">

Hardware

</th>

<th style="text-align:right;">

Software

</th>

</tr>

</thead>

<tbody>

<tr>

<td style="text-align:left;">

Nintendo Switch

</td>

<td style="text-align:right;">

52.48

</td>

<td style="text-align:right;">

310.65

</td>

</tr>

<tr>

<td style="text-align:left;">

Wii

</td>

<td style="text-align:right;">

101.63

</td>

<td style="text-align:right;">

921.41

</td>

</tr>

<tr>

<td style="text-align:left;">

Nintendo DS

</td>

<td style="text-align:right;">

154.02

</td>

<td style="text-align:right;">

948.69

</td>

</tr>

<tr>

<td style="text-align:left;">

Game Boy

</td>

<td style="text-align:right;">

118.69

</td>

<td style="text-align:right;">

501.11

</td>

</tr>

<tr>

<td style="text-align:left;">

Nintendo 64

</td>

<td style="text-align:right;">

32.93

</td>

<td style="text-align:right;">

224.97

</td>

</tr>

<tr>

<td style="text-align:left;">

SNES

</td>

<td style="text-align:right;">

49.10

</td>

<td style="text-align:right;">

379.06

</td>

</tr>

<tr>

<td style="text-align:left;">

Other Consoles

</td>

<td style="text-align:right;">

254.43

</td>

<td style="text-align:right;">

1571.23

</td>

</tr>

<tr>

<td style="text-align:left;font-weight: bold;">

Total

</td>

<td style="text-align:right;font-weight: bold;">

763.28

</td>

<td style="text-align:right;font-weight: bold;">

4857.12

</td>

</tr>

</tbody>

</table>

# `kableExtra::magic_mirror()` - new to me\!

``` r
library(kableExtra)
library(tibble)

nintendo_sales <- tribble(
  ~console, ~hardware_sales, ~software_sales,
  "Nintendo Switch", 52.48, 310.65,
  "Wii", 101.63, 921.41,
  "Nintendo DS", 154.02, 948.69,
  "Game Boy", 118.69, 501.11,
  "Nintendo 64", 32.93, 224.97,
  "SNES", 49.1, 379.06,
  "Other Consoles", 254.43, 1571.23
)

# Create a table
k <- nintendo_sales %>%
  kable(
    col.names = c("Console", "Hardware", "Software"),
    caption = "Nintendo console sales, as of December 31, 2019"
  ) %>%
  add_header_above(header = c(" ", "Sales (millions)" = 2))

k
```

<table>

<caption>

Nintendo console sales, as of December 31,
2019

</caption>

<thead>

<tr>

<th style="border-bottom:hidden" colspan="1">

</th>

<th style="border-bottom:hidden; padding-bottom:0; padding-left:3px;padding-right:3px;text-align: center; " colspan="2">

<div style="border-bottom: 1px solid #ddd; padding-bottom: 5px; ">

Sales (millions)

</div>

</th>

</tr>

<tr>

<th style="text-align:left;">

Console

</th>

<th style="text-align:right;">

Hardware

</th>

<th style="text-align:right;">

Software

</th>

</tr>

</thead>

<tbody>

<tr>

<td style="text-align:left;">

Nintendo Switch

</td>

<td style="text-align:right;">

52.48

</td>

<td style="text-align:right;">

310.65

</td>

</tr>

<tr>

<td style="text-align:left;">

Wii

</td>

<td style="text-align:right;">

101.63

</td>

<td style="text-align:right;">

921.41

</td>

</tr>

<tr>

<td style="text-align:left;">

Nintendo DS

</td>

<td style="text-align:right;">

154.02

</td>

<td style="text-align:right;">

948.69

</td>

</tr>

<tr>

<td style="text-align:left;">

Game Boy

</td>

<td style="text-align:right;">

118.69

</td>

<td style="text-align:right;">

501.11

</td>

</tr>

<tr>

<td style="text-align:left;">

Nintendo 64

</td>

<td style="text-align:right;">

32.93

</td>

<td style="text-align:right;">

224.97

</td>

</tr>

<tr>

<td style="text-align:left;">

SNES

</td>

<td style="text-align:right;">

49.10

</td>

<td style="text-align:right;">

379.06

</td>

</tr>

<tr>

<td style="text-align:left;">

Other
Consoles

</td>

<td style="text-align:right;">

254.43

</td>

<td style="text-align:right;">

1571.23

</td>

</tr>

</tbody>

</table>

``` r
# Use magic_mirror() to see attributes of it, like the caption, column names, number of columns and names, number of header rows (two here!)
magic_mirror(k)
```

    ## $caption
    ## [1] "Nintendo console sales, as of December 31, 2019"
    ## 
    ## $colnames
    ## [1] "Console"  "Hardware" "Software"
    ## 
    ## $ncol
    ## [1] 3
    ## 
    ## $nrow_header
    ## [1] 2
    ## 
    ## $table_class
    ## [1] NA
    ## 
    ## $table_style
    ## [1] NA
