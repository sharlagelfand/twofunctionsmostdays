2020-04-24
================

# `kableExtra::kable_styling()` - i know this one\!

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

# Use kable_styling() to... style a kable!
nintendo_sales %>%
  kable(col.names = c("Console", "Hardware", "Software")) %>%
  kable_styling(
    full_width = TRUE, # Make the table full width
    font_size = 20 # Change the font size
  )
```

<table class="table" style="font-size: 20px; margin-left: auto; margin-right: auto;">

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

</tbody>

</table>

``` r
# More options available, especially for PDF output (LaTeX tables)!
```

# `kableExtra::add_footnote()` - new to me\!

``` r
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

# You can include information in a footnote, using footnote()!

nintendo_sales %>%
  kable(col.names = c("Console", "Hardware", "Software")) %>%
  footnote(general = "Data as of December 31, 2019.")
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

</tbody>

<tfoot>

<tr>

<td style="padding: 0; border: 0;" colspan="100%">

<span style="font-style: italic;">Note: </span>

</td>

</tr>

<tr>

<td style="padding: 0; border: 0;" colspan="100%">

<sup></sup> Data as of December 31,
2019.

</td>

</tr>

</tfoot>

</table>

``` r
# If you want to add a footnote about a specific value - for example, what on earth is contained in "Other Consoles"?! - you need to change the value beforehand using a footnote_marker_*() function
library(dplyr)
nintendo_sales <- nintendo_sales %>%
  mutate(console = ifelse(console == "Other Consoles",
    paste0(console, footnote_marker_symbol(1)),
    console
  ))

nintendo_sales[["console"]][[7]]
```

    ## [1] "Other Consoles<sup>*</sup>"

``` r
# Then supply the footnote in footnote()!
# Remember to set `escape = FALSE` so it treats the footnote special characters HTML/LaTeX and not regular text!
nintendo_sales %>%
  kable(
    col.names = c("Console", "Hardware", "Software"),
    escape = FALSE
  ) %>%
  footnote(symbol = "'Other Consoles' includes: Nintendo 3DS, Wii U, Game Boy Advance, Nintendo GameCube, and NES.")
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

Other Consoles<sup>\*</sup>

</td>

<td style="text-align:right;">

254.43

</td>

<td style="text-align:right;">

1571.23

</td>

</tr>

</tbody>

<tfoot>

<tr>

<td style="padding: 0; border: 0;" colspan="100%">

<sup>\*</sup> ‘Other Consoles’ includes: Nintendo 3DS, Wii U, Game Boy
Advance, Nintendo GameCube, and NES.

</td>

</tr>

</tfoot>

</table>
