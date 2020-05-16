2020-05-16
================

# `gt::web_image()` - i know this one\!

``` r
library(gt)
library(tibble)

acnh_bugs_n <- tribble(
  ~name, ~price, ~location, ~time, ~months, ~image,
  "Yellow butterfly", 160, "Flying", "4 AM - 7 PM", "Mar - Jun, Sep - Oct", "https://vignette.wikia.nocookie.net/animalcrossing/images/f/fa/NH-Icon-yellowbutterfly.png",
  "Peacock butterfly", 2500, "Flying by Hybrid Flowers", "4 AM - 7 PM", "Mar - June", "https://vignette.wikia.nocookie.net/animalcrossing/images/8/8f/NH-Icon-peacockbutterfly.png",
  "Atlas moth", 3000, "On Trees", "7 PM - 4 AM", "Apr - Sep", "https://vignette.wikia.nocookie.net/animalcrossing/images/6/6a/NH-Icon-atlasmoth.png",
  "Centipede", 300, "Hitting Rocks", "4 PM - 11 PM", "Sep - June", "https://vignette.wikia.nocookie.net/animalcrossing/images/0/00/NH-Icon-molecricket.png",
  "Snail", 250, "On Rocks and Bushes (Rain) ", "All Day", "Jan - Dec", "https://vignette.wikia.nocookie.net/animalcrossing/images/b/b1/NH-Icon-snail.png",
  "Mole cricket", 500, "Underground", "All Day", "Nov - May", "https://vignette.wikia.nocookie.net/animalcrossing/images/3/30/NH-Icon-centipede.png"
)

# Add an image via URL
# Use text_transform() to apply a function to text
# Use cells_body() to specify which column will have the function applied
# Then specify the function! In this case, use web_image() to insert an image from a URL
acnh_bugs_n %>%
  gt() %>%
  text_transform(
    locations = cells_body(
      columns = vars(image)
    ),
    fn = function(x) {
      web_image(x, height = 50)
    }
  )
```

<!--html_preserve-->

<style>html {
  font-family: -apple-system, BlinkMacSystemFont, 'Segoe UI', Roboto, Oxygen, Ubuntu, Cantarell, 'Helvetica Neue', 'Fira Sans', 'Droid Sans', Arial, sans-serif;
}

#lazjjfhpyj .gt_table {
  display: table;
  border-collapse: collapse;
  margin-left: auto;
  margin-right: auto;
  color: #333333;
  font-size: 16px;
  background-color: #FFFFFF;
  width: auto;
  border-top-style: solid;
  border-top-width: 2px;
  border-top-color: #A8A8A8;
  border-right-style: none;
  border-right-width: 2px;
  border-right-color: #D3D3D3;
  border-bottom-style: solid;
  border-bottom-width: 2px;
  border-bottom-color: #A8A8A8;
  border-left-style: none;
  border-left-width: 2px;
  border-left-color: #D3D3D3;
}

#lazjjfhpyj .gt_heading {
  background-color: #FFFFFF;
  text-align: center;
  border-bottom-color: #FFFFFF;
  border-left-style: none;
  border-left-width: 1px;
  border-left-color: #D3D3D3;
  border-right-style: none;
  border-right-width: 1px;
  border-right-color: #D3D3D3;
}

#lazjjfhpyj .gt_title {
  color: #333333;
  font-size: 125%;
  font-weight: initial;
  padding-top: 4px;
  padding-bottom: 4px;
  border-bottom-color: #FFFFFF;
  border-bottom-width: 0;
}

#lazjjfhpyj .gt_subtitle {
  color: #333333;
  font-size: 85%;
  font-weight: initial;
  padding-top: 0;
  padding-bottom: 4px;
  border-top-color: #FFFFFF;
  border-top-width: 0;
}

#lazjjfhpyj .gt_bottom_border {
  border-bottom-style: solid;
  border-bottom-width: 2px;
  border-bottom-color: #D3D3D3;
}

#lazjjfhpyj .gt_col_headings {
  border-top-style: solid;
  border-top-width: 2px;
  border-top-color: #D3D3D3;
  border-bottom-style: solid;
  border-bottom-width: 2px;
  border-bottom-color: #D3D3D3;
  border-left-style: none;
  border-left-width: 1px;
  border-left-color: #D3D3D3;
  border-right-style: none;
  border-right-width: 1px;
  border-right-color: #D3D3D3;
}

#lazjjfhpyj .gt_col_heading {
  color: #333333;
  background-color: #FFFFFF;
  font-size: 100%;
  font-weight: normal;
  text-transform: inherit;
  border-left-style: none;
  border-left-width: 1px;
  border-left-color: #D3D3D3;
  border-right-style: none;
  border-right-width: 1px;
  border-right-color: #D3D3D3;
  vertical-align: bottom;
  padding-top: 5px;
  padding-bottom: 6px;
  padding-left: 5px;
  padding-right: 5px;
  overflow-x: hidden;
}

#lazjjfhpyj .gt_column_spanner_outer {
  color: #333333;
  background-color: #FFFFFF;
  font-size: 100%;
  font-weight: normal;
  text-transform: inherit;
  padding-top: 0;
  padding-bottom: 0;
  padding-left: 4px;
  padding-right: 4px;
}

#lazjjfhpyj .gt_column_spanner_outer:first-child {
  padding-left: 0;
}

#lazjjfhpyj .gt_column_spanner_outer:last-child {
  padding-right: 0;
}

#lazjjfhpyj .gt_column_spanner {
  border-bottom-style: solid;
  border-bottom-width: 2px;
  border-bottom-color: #D3D3D3;
  vertical-align: bottom;
  padding-top: 5px;
  padding-bottom: 6px;
  overflow-x: hidden;
  display: inline-block;
  width: 100%;
}

#lazjjfhpyj .gt_group_heading {
  padding: 8px;
  color: #333333;
  background-color: #FFFFFF;
  font-size: 100%;
  font-weight: initial;
  text-transform: inherit;
  border-top-style: solid;
  border-top-width: 2px;
  border-top-color: #D3D3D3;
  border-bottom-style: solid;
  border-bottom-width: 2px;
  border-bottom-color: #D3D3D3;
  border-left-style: none;
  border-left-width: 1px;
  border-left-color: #D3D3D3;
  border-right-style: none;
  border-right-width: 1px;
  border-right-color: #D3D3D3;
  vertical-align: middle;
}

#lazjjfhpyj .gt_empty_group_heading {
  padding: 0.5px;
  color: #333333;
  background-color: #FFFFFF;
  font-size: 100%;
  font-weight: initial;
  border-top-style: solid;
  border-top-width: 2px;
  border-top-color: #D3D3D3;
  border-bottom-style: solid;
  border-bottom-width: 2px;
  border-bottom-color: #D3D3D3;
  vertical-align: middle;
}

#lazjjfhpyj .gt_striped {
  background-color: rgba(128, 128, 128, 0.05);
}

#lazjjfhpyj .gt_from_md > :first-child {
  margin-top: 0;
}

#lazjjfhpyj .gt_from_md > :last-child {
  margin-bottom: 0;
}

#lazjjfhpyj .gt_row {
  padding-top: 8px;
  padding-bottom: 8px;
  padding-left: 5px;
  padding-right: 5px;
  margin: 10px;
  border-top-style: solid;
  border-top-width: 1px;
  border-top-color: #D3D3D3;
  border-left-style: none;
  border-left-width: 1px;
  border-left-color: #D3D3D3;
  border-right-style: none;
  border-right-width: 1px;
  border-right-color: #D3D3D3;
  vertical-align: middle;
  overflow-x: hidden;
}

#lazjjfhpyj .gt_stub {
  color: #333333;
  background-color: #FFFFFF;
  font-size: 100%;
  font-weight: initial;
  text-transform: inherit;
  border-right-style: solid;
  border-right-width: 2px;
  border-right-color: #D3D3D3;
  padding-left: 12px;
}

#lazjjfhpyj .gt_summary_row {
  color: #333333;
  background-color: #FFFFFF;
  text-transform: inherit;
  padding-top: 8px;
  padding-bottom: 8px;
  padding-left: 5px;
  padding-right: 5px;
}

#lazjjfhpyj .gt_first_summary_row {
  padding-top: 8px;
  padding-bottom: 8px;
  padding-left: 5px;
  padding-right: 5px;
  border-top-style: solid;
  border-top-width: 2px;
  border-top-color: #D3D3D3;
}

#lazjjfhpyj .gt_grand_summary_row {
  color: #333333;
  background-color: #FFFFFF;
  text-transform: inherit;
  padding-top: 8px;
  padding-bottom: 8px;
  padding-left: 5px;
  padding-right: 5px;
}

#lazjjfhpyj .gt_first_grand_summary_row {
  padding-top: 8px;
  padding-bottom: 8px;
  padding-left: 5px;
  padding-right: 5px;
  border-top-style: double;
  border-top-width: 6px;
  border-top-color: #D3D3D3;
}

#lazjjfhpyj .gt_table_body {
  border-top-style: solid;
  border-top-width: 2px;
  border-top-color: #D3D3D3;
  border-bottom-style: solid;
  border-bottom-width: 2px;
  border-bottom-color: #D3D3D3;
}

#lazjjfhpyj .gt_footnotes {
  color: #333333;
  background-color: #FFFFFF;
  border-bottom-style: none;
  border-bottom-width: 2px;
  border-bottom-color: #D3D3D3;
  border-left-style: none;
  border-left-width: 2px;
  border-left-color: #D3D3D3;
  border-right-style: none;
  border-right-width: 2px;
  border-right-color: #D3D3D3;
}

#lazjjfhpyj .gt_footnote {
  margin: 0px;
  font-size: 90%;
  padding: 4px;
}

#lazjjfhpyj .gt_sourcenotes {
  color: #333333;
  background-color: #FFFFFF;
  border-bottom-style: none;
  border-bottom-width: 2px;
  border-bottom-color: #D3D3D3;
  border-left-style: none;
  border-left-width: 2px;
  border-left-color: #D3D3D3;
  border-right-style: none;
  border-right-width: 2px;
  border-right-color: #D3D3D3;
}

#lazjjfhpyj .gt_sourcenote {
  font-size: 90%;
  padding: 4px;
}

#lazjjfhpyj .gt_left {
  text-align: left;
}

#lazjjfhpyj .gt_center {
  text-align: center;
}

#lazjjfhpyj .gt_right {
  text-align: right;
  font-variant-numeric: tabular-nums;
}

#lazjjfhpyj .gt_font_normal {
  font-weight: normal;
}

#lazjjfhpyj .gt_font_bold {
  font-weight: bold;
}

#lazjjfhpyj .gt_font_italic {
  font-style: italic;
}

#lazjjfhpyj .gt_super {
  font-size: 65%;
}

#lazjjfhpyj .gt_footnote_marks {
  font-style: italic;
  font-size: 65%;
}
</style>

<div id="lazjjfhpyj" style="overflow-x:auto;overflow-y:auto;width:auto;height:auto;">

<table class="gt_table">

<thead class="gt_col_headings">

<tr>

<th class="gt_col_heading gt_columns_bottom_border gt_left" rowspan="1" colspan="1">

name

</th>

<th class="gt_col_heading gt_columns_bottom_border gt_right" rowspan="1" colspan="1">

price

</th>

<th class="gt_col_heading gt_columns_bottom_border gt_left" rowspan="1" colspan="1">

location

</th>

<th class="gt_col_heading gt_columns_bottom_border gt_left" rowspan="1" colspan="1">

time

</th>

<th class="gt_col_heading gt_columns_bottom_border gt_left" rowspan="1" colspan="1">

months

</th>

<th class="gt_col_heading gt_columns_bottom_border gt_left" rowspan="1" colspan="1">

image

</th>

</tr>

</thead>

<tbody class="gt_table_body">

<tr>

<td class="gt_row gt_left">

Yellow butterfly

</td>

<td class="gt_row gt_right">

160

</td>

<td class="gt_row gt_left">

Flying

</td>

<td class="gt_row gt_left">

4 AM - 7 PM

</td>

<td class="gt_row gt_left">

Mar - Jun, Sep -
Oct

</td>

<td class="gt_row gt_left">

<img src="https://vignette.wikia.nocookie.net/animalcrossing/images/f/fa/NH-Icon-yellowbutterfly.png" style="height:50px;">

</td>

</tr>

<tr>

<td class="gt_row gt_left">

Peacock butterfly

</td>

<td class="gt_row gt_right">

2500

</td>

<td class="gt_row gt_left">

Flying by Hybrid Flowers

</td>

<td class="gt_row gt_left">

4 AM - 7 PM

</td>

<td class="gt_row gt_left">

Mar -
June

</td>

<td class="gt_row gt_left">

<img src="https://vignette.wikia.nocookie.net/animalcrossing/images/8/8f/NH-Icon-peacockbutterfly.png" style="height:50px;">

</td>

</tr>

<tr>

<td class="gt_row gt_left">

Atlas moth

</td>

<td class="gt_row gt_right">

3000

</td>

<td class="gt_row gt_left">

On Trees

</td>

<td class="gt_row gt_left">

7 PM - 4 AM

</td>

<td class="gt_row gt_left">

Apr -
Sep

</td>

<td class="gt_row gt_left">

<img src="https://vignette.wikia.nocookie.net/animalcrossing/images/6/6a/NH-Icon-atlasmoth.png" style="height:50px;">

</td>

</tr>

<tr>

<td class="gt_row gt_left">

Centipede

</td>

<td class="gt_row gt_right">

300

</td>

<td class="gt_row gt_left">

Hitting Rocks

</td>

<td class="gt_row gt_left">

4 PM - 11 PM

</td>

<td class="gt_row gt_left">

Sep -
June

</td>

<td class="gt_row gt_left">

<img src="https://vignette.wikia.nocookie.net/animalcrossing/images/0/00/NH-Icon-molecricket.png" style="height:50px;">

</td>

</tr>

<tr>

<td class="gt_row gt_left">

Snail

</td>

<td class="gt_row gt_right">

250

</td>

<td class="gt_row gt_left">

On Rocks and Bushes (Rain)

</td>

<td class="gt_row gt_left">

All Day

</td>

<td class="gt_row gt_left">

Jan -
Dec

</td>

<td class="gt_row gt_left">

<img src="https://vignette.wikia.nocookie.net/animalcrossing/images/b/b1/NH-Icon-snail.png" style="height:50px;">

</td>

</tr>

<tr>

<td class="gt_row gt_left">

Mole cricket

</td>

<td class="gt_row gt_right">

500

</td>

<td class="gt_row gt_left">

Underground

</td>

<td class="gt_row gt_left">

All Day

</td>

<td class="gt_row gt_left">

Nov -
May

</td>

<td class="gt_row gt_left">

<img src="https://vignette.wikia.nocookie.net/animalcrossing/images/3/30/NH-Icon-centipede.png" style="height:50px;">

</td>

</tr>

</tbody>

</table>

</div>

<!--/html_preserve-->

# `gt::cols_move_to_start()` - new to me\!

``` r
library(gt)
library(tibble)

acnh_bugs_n <- tribble(
  ~name, ~price, ~location, ~time, ~months, ~image,
  "Yellow butterfly", 160, "Flying", "4 AM - 7 PM", "Mar - Jun, Sep - Oct", "https://vignette.wikia.nocookie.net/animalcrossing/images/f/fa/NH-Icon-yellowbutterfly.png",
  "Peacock butterfly", 2500, "Flying by Hybrid Flowers", "4 AM - 7 PM", "Mar - June", "https://vignette.wikia.nocookie.net/animalcrossing/images/8/8f/NH-Icon-peacockbutterfly.png",
  "Atlas moth", 3000, "On Trees", "7 PM - 4 AM", "Apr - Sep", "https://vignette.wikia.nocookie.net/animalcrossing/images/6/6a/NH-Icon-atlasmoth.png",
  "Centipede", 300, "Hitting Rocks", "4 PM - 11 PM", "Sep - June", "https://vignette.wikia.nocookie.net/animalcrossing/images/0/00/NH-Icon-molecricket.png",
  "Snail", 250, "On Rocks and Bushes (Rain) ", "All Day", "Jan - Dec", "https://vignette.wikia.nocookie.net/animalcrossing/images/b/b1/NH-Icon-snail.png",
  "Mole cricket", 500, "Underground", "All Day", "Nov - May", "https://vignette.wikia.nocookie.net/animalcrossing/images/3/30/NH-Icon-centipede.png"
)

# Relocate a column without altering the underlying data!
# Use cols_move_to_start() to move the image column to the start
acnh_bugs_n %>%
  gt() %>%
  text_transform(
    locations = cells_body(
      columns = vars(image)
    ),
    fn = function(x) {
      web_image(x, height = 50)
    }
  ) %>%
  cols_move_to_start(columns = vars(image))
```

<!--html_preserve-->

<style>html {
  font-family: -apple-system, BlinkMacSystemFont, 'Segoe UI', Roboto, Oxygen, Ubuntu, Cantarell, 'Helvetica Neue', 'Fira Sans', 'Droid Sans', Arial, sans-serif;
}

#zszkvxuclj .gt_table {
  display: table;
  border-collapse: collapse;
  margin-left: auto;
  margin-right: auto;
  color: #333333;
  font-size: 16px;
  background-color: #FFFFFF;
  width: auto;
  border-top-style: solid;
  border-top-width: 2px;
  border-top-color: #A8A8A8;
  border-right-style: none;
  border-right-width: 2px;
  border-right-color: #D3D3D3;
  border-bottom-style: solid;
  border-bottom-width: 2px;
  border-bottom-color: #A8A8A8;
  border-left-style: none;
  border-left-width: 2px;
  border-left-color: #D3D3D3;
}

#zszkvxuclj .gt_heading {
  background-color: #FFFFFF;
  text-align: center;
  border-bottom-color: #FFFFFF;
  border-left-style: none;
  border-left-width: 1px;
  border-left-color: #D3D3D3;
  border-right-style: none;
  border-right-width: 1px;
  border-right-color: #D3D3D3;
}

#zszkvxuclj .gt_title {
  color: #333333;
  font-size: 125%;
  font-weight: initial;
  padding-top: 4px;
  padding-bottom: 4px;
  border-bottom-color: #FFFFFF;
  border-bottom-width: 0;
}

#zszkvxuclj .gt_subtitle {
  color: #333333;
  font-size: 85%;
  font-weight: initial;
  padding-top: 0;
  padding-bottom: 4px;
  border-top-color: #FFFFFF;
  border-top-width: 0;
}

#zszkvxuclj .gt_bottom_border {
  border-bottom-style: solid;
  border-bottom-width: 2px;
  border-bottom-color: #D3D3D3;
}

#zszkvxuclj .gt_col_headings {
  border-top-style: solid;
  border-top-width: 2px;
  border-top-color: #D3D3D3;
  border-bottom-style: solid;
  border-bottom-width: 2px;
  border-bottom-color: #D3D3D3;
  border-left-style: none;
  border-left-width: 1px;
  border-left-color: #D3D3D3;
  border-right-style: none;
  border-right-width: 1px;
  border-right-color: #D3D3D3;
}

#zszkvxuclj .gt_col_heading {
  color: #333333;
  background-color: #FFFFFF;
  font-size: 100%;
  font-weight: normal;
  text-transform: inherit;
  border-left-style: none;
  border-left-width: 1px;
  border-left-color: #D3D3D3;
  border-right-style: none;
  border-right-width: 1px;
  border-right-color: #D3D3D3;
  vertical-align: bottom;
  padding-top: 5px;
  padding-bottom: 6px;
  padding-left: 5px;
  padding-right: 5px;
  overflow-x: hidden;
}

#zszkvxuclj .gt_column_spanner_outer {
  color: #333333;
  background-color: #FFFFFF;
  font-size: 100%;
  font-weight: normal;
  text-transform: inherit;
  padding-top: 0;
  padding-bottom: 0;
  padding-left: 4px;
  padding-right: 4px;
}

#zszkvxuclj .gt_column_spanner_outer:first-child {
  padding-left: 0;
}

#zszkvxuclj .gt_column_spanner_outer:last-child {
  padding-right: 0;
}

#zszkvxuclj .gt_column_spanner {
  border-bottom-style: solid;
  border-bottom-width: 2px;
  border-bottom-color: #D3D3D3;
  vertical-align: bottom;
  padding-top: 5px;
  padding-bottom: 6px;
  overflow-x: hidden;
  display: inline-block;
  width: 100%;
}

#zszkvxuclj .gt_group_heading {
  padding: 8px;
  color: #333333;
  background-color: #FFFFFF;
  font-size: 100%;
  font-weight: initial;
  text-transform: inherit;
  border-top-style: solid;
  border-top-width: 2px;
  border-top-color: #D3D3D3;
  border-bottom-style: solid;
  border-bottom-width: 2px;
  border-bottom-color: #D3D3D3;
  border-left-style: none;
  border-left-width: 1px;
  border-left-color: #D3D3D3;
  border-right-style: none;
  border-right-width: 1px;
  border-right-color: #D3D3D3;
  vertical-align: middle;
}

#zszkvxuclj .gt_empty_group_heading {
  padding: 0.5px;
  color: #333333;
  background-color: #FFFFFF;
  font-size: 100%;
  font-weight: initial;
  border-top-style: solid;
  border-top-width: 2px;
  border-top-color: #D3D3D3;
  border-bottom-style: solid;
  border-bottom-width: 2px;
  border-bottom-color: #D3D3D3;
  vertical-align: middle;
}

#zszkvxuclj .gt_striped {
  background-color: rgba(128, 128, 128, 0.05);
}

#zszkvxuclj .gt_from_md > :first-child {
  margin-top: 0;
}

#zszkvxuclj .gt_from_md > :last-child {
  margin-bottom: 0;
}

#zszkvxuclj .gt_row {
  padding-top: 8px;
  padding-bottom: 8px;
  padding-left: 5px;
  padding-right: 5px;
  margin: 10px;
  border-top-style: solid;
  border-top-width: 1px;
  border-top-color: #D3D3D3;
  border-left-style: none;
  border-left-width: 1px;
  border-left-color: #D3D3D3;
  border-right-style: none;
  border-right-width: 1px;
  border-right-color: #D3D3D3;
  vertical-align: middle;
  overflow-x: hidden;
}

#zszkvxuclj .gt_stub {
  color: #333333;
  background-color: #FFFFFF;
  font-size: 100%;
  font-weight: initial;
  text-transform: inherit;
  border-right-style: solid;
  border-right-width: 2px;
  border-right-color: #D3D3D3;
  padding-left: 12px;
}

#zszkvxuclj .gt_summary_row {
  color: #333333;
  background-color: #FFFFFF;
  text-transform: inherit;
  padding-top: 8px;
  padding-bottom: 8px;
  padding-left: 5px;
  padding-right: 5px;
}

#zszkvxuclj .gt_first_summary_row {
  padding-top: 8px;
  padding-bottom: 8px;
  padding-left: 5px;
  padding-right: 5px;
  border-top-style: solid;
  border-top-width: 2px;
  border-top-color: #D3D3D3;
}

#zszkvxuclj .gt_grand_summary_row {
  color: #333333;
  background-color: #FFFFFF;
  text-transform: inherit;
  padding-top: 8px;
  padding-bottom: 8px;
  padding-left: 5px;
  padding-right: 5px;
}

#zszkvxuclj .gt_first_grand_summary_row {
  padding-top: 8px;
  padding-bottom: 8px;
  padding-left: 5px;
  padding-right: 5px;
  border-top-style: double;
  border-top-width: 6px;
  border-top-color: #D3D3D3;
}

#zszkvxuclj .gt_table_body {
  border-top-style: solid;
  border-top-width: 2px;
  border-top-color: #D3D3D3;
  border-bottom-style: solid;
  border-bottom-width: 2px;
  border-bottom-color: #D3D3D3;
}

#zszkvxuclj .gt_footnotes {
  color: #333333;
  background-color: #FFFFFF;
  border-bottom-style: none;
  border-bottom-width: 2px;
  border-bottom-color: #D3D3D3;
  border-left-style: none;
  border-left-width: 2px;
  border-left-color: #D3D3D3;
  border-right-style: none;
  border-right-width: 2px;
  border-right-color: #D3D3D3;
}

#zszkvxuclj .gt_footnote {
  margin: 0px;
  font-size: 90%;
  padding: 4px;
}

#zszkvxuclj .gt_sourcenotes {
  color: #333333;
  background-color: #FFFFFF;
  border-bottom-style: none;
  border-bottom-width: 2px;
  border-bottom-color: #D3D3D3;
  border-left-style: none;
  border-left-width: 2px;
  border-left-color: #D3D3D3;
  border-right-style: none;
  border-right-width: 2px;
  border-right-color: #D3D3D3;
}

#zszkvxuclj .gt_sourcenote {
  font-size: 90%;
  padding: 4px;
}

#zszkvxuclj .gt_left {
  text-align: left;
}

#zszkvxuclj .gt_center {
  text-align: center;
}

#zszkvxuclj .gt_right {
  text-align: right;
  font-variant-numeric: tabular-nums;
}

#zszkvxuclj .gt_font_normal {
  font-weight: normal;
}

#zszkvxuclj .gt_font_bold {
  font-weight: bold;
}

#zszkvxuclj .gt_font_italic {
  font-style: italic;
}

#zszkvxuclj .gt_super {
  font-size: 65%;
}

#zszkvxuclj .gt_footnote_marks {
  font-style: italic;
  font-size: 65%;
}
</style>

<div id="zszkvxuclj" style="overflow-x:auto;overflow-y:auto;width:auto;height:auto;">

<table class="gt_table">

<thead class="gt_col_headings">

<tr>

<th class="gt_col_heading gt_columns_bottom_border gt_left" rowspan="1" colspan="1">

image

</th>

<th class="gt_col_heading gt_columns_bottom_border gt_left" rowspan="1" colspan="1">

name

</th>

<th class="gt_col_heading gt_columns_bottom_border gt_right" rowspan="1" colspan="1">

price

</th>

<th class="gt_col_heading gt_columns_bottom_border gt_left" rowspan="1" colspan="1">

location

</th>

<th class="gt_col_heading gt_columns_bottom_border gt_left" rowspan="1" colspan="1">

time

</th>

<th class="gt_col_heading gt_columns_bottom_border gt_left" rowspan="1" colspan="1">

months

</th>

</tr>

</thead>

<tbody class="gt_table_body">

<tr>

<td class="gt_row gt_left">

<img src="https://vignette.wikia.nocookie.net/animalcrossing/images/f/fa/NH-Icon-yellowbutterfly.png" style="height:50px;">

</td>

<td class="gt_row gt_left">

Yellow butterfly

</td>

<td class="gt_row gt_right">

160

</td>

<td class="gt_row gt_left">

Flying

</td>

<td class="gt_row gt_left">

4 AM - 7 PM

</td>

<td class="gt_row gt_left">

Mar - Jun, Sep -
Oct

</td>

</tr>

<tr>

<td class="gt_row gt_left">

<img src="https://vignette.wikia.nocookie.net/animalcrossing/images/8/8f/NH-Icon-peacockbutterfly.png" style="height:50px;">

</td>

<td class="gt_row gt_left">

Peacock butterfly

</td>

<td class="gt_row gt_right">

2500

</td>

<td class="gt_row gt_left">

Flying by Hybrid Flowers

</td>

<td class="gt_row gt_left">

4 AM - 7 PM

</td>

<td class="gt_row gt_left">

Mar -
June

</td>

</tr>

<tr>

<td class="gt_row gt_left">

<img src="https://vignette.wikia.nocookie.net/animalcrossing/images/6/6a/NH-Icon-atlasmoth.png" style="height:50px;">

</td>

<td class="gt_row gt_left">

Atlas moth

</td>

<td class="gt_row gt_right">

3000

</td>

<td class="gt_row gt_left">

On Trees

</td>

<td class="gt_row gt_left">

7 PM - 4 AM

</td>

<td class="gt_row gt_left">

Apr -
Sep

</td>

</tr>

<tr>

<td class="gt_row gt_left">

<img src="https://vignette.wikia.nocookie.net/animalcrossing/images/0/00/NH-Icon-molecricket.png" style="height:50px;">

</td>

<td class="gt_row gt_left">

Centipede

</td>

<td class="gt_row gt_right">

300

</td>

<td class="gt_row gt_left">

Hitting Rocks

</td>

<td class="gt_row gt_left">

4 PM - 11 PM

</td>

<td class="gt_row gt_left">

Sep -
June

</td>

</tr>

<tr>

<td class="gt_row gt_left">

<img src="https://vignette.wikia.nocookie.net/animalcrossing/images/b/b1/NH-Icon-snail.png" style="height:50px;">

</td>

<td class="gt_row gt_left">

Snail

</td>

<td class="gt_row gt_right">

250

</td>

<td class="gt_row gt_left">

On Rocks and Bushes (Rain)

</td>

<td class="gt_row gt_left">

All Day

</td>

<td class="gt_row gt_left">

Jan -
Dec

</td>

</tr>

<tr>

<td class="gt_row gt_left">

<img src="https://vignette.wikia.nocookie.net/animalcrossing/images/3/30/NH-Icon-centipede.png" style="height:50px;">

</td>

<td class="gt_row gt_left">

Mole cricket

</td>

<td class="gt_row gt_right">

500

</td>

<td class="gt_row gt_left">

Underground

</td>

<td class="gt_row gt_left">

All Day

</td>

<td class="gt_row gt_left">

Nov - May

</td>

</tr>

</tbody>

</table>

</div>

<!--/html_preserve-->
