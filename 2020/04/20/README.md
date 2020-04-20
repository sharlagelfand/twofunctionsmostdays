2020-04-20
================

# `kableExtra::add_header_above()` - i know this one\!

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

# Use kable() to create a table, and add_header_above() to create a top header spanning the last two columns!
nintendo_sales %>%
  kable(col.names = c("Console", "Hardware", "Software")) %>%
  add_header_above(header = c(" " = 1, "Sales (millions)" = 2))
```

<table>

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

Other Consoles

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

# `kableExtra::cell_spec()` - new to me\!

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

# Say we want to create a table where sales are coloured by their value
# Use cell_spec() to set the colour first. It'll convert that cell to HTML (or latex if you're writing to PDF)
library(dplyr)

nintendo_sales_colour <- nintendo_sales %>%
  mutate_at(
    vars(contains("_sales")),
    ~ case_when(
      .x < 100 ~ cell_spec(.x, format = "html", background = "#ffded7"),
      .x < 500 ~ cell_spec(.x, format = "html", background = "#ffcec4"),
      TRUE ~ cell_spec(.x, format = "html", background = "#ffbdb0")
    )
  )

nintendo_sales_colour
```

    ## # A tibble: 7 x 3
    ##   console    hardware_sales                    software_sales                   
    ##   <chr>      <chr>                             <chr>                            
    ## 1 Nintendo … "<span style=\"     border-radiu… "<span style=\"     border-radiu…
    ## 2 Wii        "<span style=\"     border-radiu… "<span style=\"     border-radiu…
    ## 3 Nintendo … "<span style=\"     border-radiu… "<span style=\"     border-radiu…
    ## 4 Game Boy   "<span style=\"     border-radiu… "<span style=\"     border-radiu…
    ## 5 Nintendo … "<span style=\"     border-radiu… "<span style=\"     border-radiu…
    ## 6 SNES       "<span style=\"     border-radiu… "<span style=\"     border-radiu…
    ## 7 Other Con… "<span style=\"     border-radiu… "<span style=\"     border-radiu…

``` r
# Then pass to kable(), which will handle the rest!
# Just remember to set `escape = FALSE` so it treats the HTML as HTML, and not regular text!
nintendo_sales_colour %>%
  kable(col.names = c("Console", "Hardware", "Software"),
        escape = FALSE)
```

<table>

<thead>

<tr>

<th style="text-align:left;">

Console

</th>

<th style="text-align:left;">

Hardware

</th>

<th style="text-align:left;">

Software

</th>

</tr>

</thead>

<tbody>

<tr>

<td style="text-align:left;">

Nintendo
Switch

</td>

<td style="text-align:left;">

<span style="     border-radius: 4px; padding-right: 4px; padding-left: 4px; background-color: #ffded7 !important;">52.48</span>

</td>

<td style="text-align:left;">

<span style="     border-radius: 4px; padding-right: 4px; padding-left: 4px; background-color: #ffcec4 !important;">310.65</span>

</td>

</tr>

<tr>

<td style="text-align:left;">

Wii

</td>

<td style="text-align:left;">

<span style="     border-radius: 4px; padding-right: 4px; padding-left: 4px; background-color: #ffcec4 !important;">101.63</span>

</td>

<td style="text-align:left;">

<span style="     border-radius: 4px; padding-right: 4px; padding-left: 4px; background-color: #ffbdb0 !important;">921.41</span>

</td>

</tr>

<tr>

<td style="text-align:left;">

Nintendo
DS

</td>

<td style="text-align:left;">

<span style="     border-radius: 4px; padding-right: 4px; padding-left: 4px; background-color: #ffcec4 !important;">154.02</span>

</td>

<td style="text-align:left;">

<span style="     border-radius: 4px; padding-right: 4px; padding-left: 4px; background-color: #ffbdb0 !important;">948.69</span>

</td>

</tr>

<tr>

<td style="text-align:left;">

Game
Boy

</td>

<td style="text-align:left;">

<span style="     border-radius: 4px; padding-right: 4px; padding-left: 4px; background-color: #ffcec4 !important;">118.69</span>

</td>

<td style="text-align:left;">

<span style="     border-radius: 4px; padding-right: 4px; padding-left: 4px; background-color: #ffbdb0 !important;">501.11</span>

</td>

</tr>

<tr>

<td style="text-align:left;">

Nintendo
64

</td>

<td style="text-align:left;">

<span style="     border-radius: 4px; padding-right: 4px; padding-left: 4px; background-color: #ffded7 !important;">32.93</span>

</td>

<td style="text-align:left;">

<span style="     border-radius: 4px; padding-right: 4px; padding-left: 4px; background-color: #ffcec4 !important;">224.97</span>

</td>

</tr>

<tr>

<td style="text-align:left;">

SNES

</td>

<td style="text-align:left;">

<span style="     border-radius: 4px; padding-right: 4px; padding-left: 4px; background-color: #ffded7 !important;">49.1</span>

</td>

<td style="text-align:left;">

<span style="     border-radius: 4px; padding-right: 4px; padding-left: 4px; background-color: #ffcec4 !important;">379.06</span>

</td>

</tr>

<tr>

<td style="text-align:left;">

Other
Consoles

</td>

<td style="text-align:left;">

<span style="     border-radius: 4px; padding-right: 4px; padding-left: 4px; background-color: #ffcec4 !important;">254.43</span>

</td>

<td style="text-align:left;">

<span style="     border-radius: 4px; padding-right: 4px; padding-left: 4px; background-color: #ffbdb0 !important;">1571.23</span>

</td>

</tr>

</tbody>

</table>
