2020-04-21
================

# `kableExtra::column_spec()` - i know this one\!

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

k <- nintendo_sales %>%
  kable(col.names = c("Console", "Hardware", "Software"))

# Use column_spec() to alter the appearance of a column!
k %>%
  column_spec(
    column = 1,
    italic = TRUE
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

<td style="text-align:left;font-style: italic;">

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

<td style="text-align:left;font-style: italic;">

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

<td style="text-align:left;font-style: italic;">

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

<td style="text-align:left;font-style: italic;">

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

<td style="text-align:left;font-style: italic;">

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

<td style="text-align:left;font-style: italic;">

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

<td style="text-align:left;font-style: italic;">

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
# Excludes the header by default, but you can set it to include it with `include_thread`!
# Specify multiple columns, too!
k %>%
  column_spec(
    column = 2:3,
    italic = TRUE,
    include_thead = TRUE
  )
```

<table>

<thead>

<tr>

<th style="text-align:left;">

Console

</th>

<th style="text-align:right;font-style: italic;">

Hardware

</th>

<th style="text-align:right;font-style: italic;">

Software

</th>

</tr>

</thead>

<tbody>

<tr>

<td style="text-align:left;">

Nintendo Switch

</td>

<td style="text-align:right;font-style: italic;">

52.48

</td>

<td style="text-align:right;font-style: italic;">

310.65

</td>

</tr>

<tr>

<td style="text-align:left;">

Wii

</td>

<td style="text-align:right;font-style: italic;">

101.63

</td>

<td style="text-align:right;font-style: italic;">

921.41

</td>

</tr>

<tr>

<td style="text-align:left;">

Nintendo DS

</td>

<td style="text-align:right;font-style: italic;">

154.02

</td>

<td style="text-align:right;font-style: italic;">

948.69

</td>

</tr>

<tr>

<td style="text-align:left;">

Game Boy

</td>

<td style="text-align:right;font-style: italic;">

118.69

</td>

<td style="text-align:right;font-style: italic;">

501.11

</td>

</tr>

<tr>

<td style="text-align:left;">

Nintendo 64

</td>

<td style="text-align:right;font-style: italic;">

32.93

</td>

<td style="text-align:right;font-style: italic;">

224.97

</td>

</tr>

<tr>

<td style="text-align:left;">

SNES

</td>

<td style="text-align:right;font-style: italic;">

49.10

</td>

<td style="text-align:right;font-style: italic;">

379.06

</td>

</tr>

<tr>

<td style="text-align:left;">

Other Consoles

</td>

<td style="text-align:right;font-style: italic;">

254.43

</td>

<td style="text-align:right;font-style: italic;">

1571.23

</td>

</tr>

</tbody>

</table>

# `kableExtra::collapse_rows()` - new to me\!

``` r
library(kableExtra)
library(tibble)

nintendo_sales <- tribble(
  ~console, ~sales_type, ~sales_million,
  "Nintendo Switch", "Hardware", 52.48,
  "Nintendo Switch", "Software", 310.65,
  "Game Boy", "Hardware", 118.69,
  "Game Boy", "Software", 501.11,
  "Nintendo 64", "Hardware", 32.93,
  "Nintendo 64", "Software", 224.97,
  "SNES", "Hardware", 49.1,
  "SNES", "Software", 379.06,
)

# You might have information in your data that doesn't need to be repeated
# You can collapse values from a column into a single row:
nintendo_sales %>%
  kable(col.names = c("Console", "Type", "Sales")) %>%
  collapse_rows(columns = 1)
```

<table>

<thead>

<tr>

<th style="text-align:left;">

Console

</th>

<th style="text-align:left;">

Type

</th>

<th style="text-align:right;">

Sales

</th>

</tr>

</thead>

<tbody>

<tr>

<td style="text-align:left;vertical-align: middle !important;" rowspan="2">

Nintendo
Switch

</td>

<td style="text-align:left;">

Hardware

</td>

<td style="text-align:right;">

52.48

</td>

</tr>

<tr>

<td style="text-align:left;">

Software

</td>

<td style="text-align:right;">

310.65

</td>

</tr>

<tr>

<td style="text-align:left;vertical-align: middle !important;" rowspan="2">

Game
Boy

</td>

<td style="text-align:left;">

Hardware

</td>

<td style="text-align:right;">

118.69

</td>

</tr>

<tr>

<td style="text-align:left;">

Software

</td>

<td style="text-align:right;">

501.11

</td>

</tr>

<tr>

<td style="text-align:left;vertical-align: middle !important;" rowspan="2">

Nintendo
64

</td>

<td style="text-align:left;">

Hardware

</td>

<td style="text-align:right;">

32.93

</td>

</tr>

<tr>

<td style="text-align:left;">

Software

</td>

<td style="text-align:right;">

224.97

</td>

</tr>

<tr>

<td style="text-align:left;vertical-align: middle !important;" rowspan="2">

SNES

</td>

<td style="text-align:left;">

Hardware

</td>

<td style="text-align:right;">

49.10

</td>

</tr>

<tr>

<td style="text-align:left;">

Software

</td>

<td style="text-align:right;">

379.06

</td>

</tr>

</tbody>

</table>

``` r
# Positions the row in the middle by default, but you can change that!
nintendo_sales %>%
  kable(col.names = c("Console", "Type", "Sales")) %>%
  collapse_rows(
    columns = 1,
    valign = "top"
  )
```

<table>

<thead>

<tr>

<th style="text-align:left;">

Console

</th>

<th style="text-align:left;">

Type

</th>

<th style="text-align:right;">

Sales

</th>

</tr>

</thead>

<tbody>

<tr>

<td style="text-align:left;vertical-align: top !important;" rowspan="2">

Nintendo Switch

</td>

<td style="text-align:left;">

Hardware

</td>

<td style="text-align:right;">

52.48

</td>

</tr>

<tr>

<td style="text-align:left;">

Software

</td>

<td style="text-align:right;">

310.65

</td>

</tr>

<tr>

<td style="text-align:left;vertical-align: top !important;" rowspan="2">

Game Boy

</td>

<td style="text-align:left;">

Hardware

</td>

<td style="text-align:right;">

118.69

</td>

</tr>

<tr>

<td style="text-align:left;">

Software

</td>

<td style="text-align:right;">

501.11

</td>

</tr>

<tr>

<td style="text-align:left;vertical-align: top !important;" rowspan="2">

Nintendo 64

</td>

<td style="text-align:left;">

Hardware

</td>

<td style="text-align:right;">

32.93

</td>

</tr>

<tr>

<td style="text-align:left;">

Software

</td>

<td style="text-align:right;">

224.97

</td>

</tr>

<tr>

<td style="text-align:left;vertical-align: top !important;" rowspan="2">

SNES

</td>

<td style="text-align:left;">

Hardware

</td>

<td style="text-align:right;">

49.10

</td>

</tr>

<tr>

<td style="text-align:left;">

Software

</td>

<td style="text-align:right;">

379.06

</td>

</tr>

</tbody>

</table>
