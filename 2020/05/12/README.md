2020-05-12
================

# `gt::tab_header()` - i know this one\!

``` r
library(gt)
library(tibble)

acnh_bugs_n <- tribble(
  ~name, ~price, ~location, ~time, ~months,
  "Yellow butterfly", 160, "Flying", "4 AM - 7 PM", "Mar - Jun, Sep - Oct",
  "Peacock butterfly", 2500, "Flying by Hybrid Flowers", "4 AM - 7 PM", "Mar - June",
  "Atlas moth", 3000, "On Trees", "7 PM - 4 AM", "Apr - Sep",
  "Centipede", 300, "Hitting Rocks", "4 PM - 11 PM", "Sep - June",
  "Snail", 250, "On Rocks and Bushes (Rain) ", "All Day", "Jan - Dec",
  "Mole cricket", 500, "Underground", "All Day", "Nov - May"
)

# Add a header (title and/or subtitle) to the table with tab_header()
acnh_bugs_n %>%
  gt() %>%
  tab_header(
    title = "Animal Crossing New Horizons Critters",
    subtitle = "(Availability based on Northern Hemisphere)"
  )
```

<!--html_preserve-->

<style>html {
  font-family: -apple-system, BlinkMacSystemFont, 'Segoe UI', Roboto, Oxygen, Ubuntu, Cantarell, 'Helvetica Neue', 'Fira Sans', 'Droid Sans', Arial, sans-serif;
}

#tmthseqdjx .gt_table {
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

#tmthseqdjx .gt_heading {
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

#tmthseqdjx .gt_title {
  color: #333333;
  font-size: 125%;
  font-weight: initial;
  padding-top: 4px;
  padding-bottom: 4px;
  border-bottom-color: #FFFFFF;
  border-bottom-width: 0;
}

#tmthseqdjx .gt_subtitle {
  color: #333333;
  font-size: 85%;
  font-weight: initial;
  padding-top: 0;
  padding-bottom: 4px;
  border-top-color: #FFFFFF;
  border-top-width: 0;
}

#tmthseqdjx .gt_bottom_border {
  border-bottom-style: solid;
  border-bottom-width: 2px;
  border-bottom-color: #D3D3D3;
}

#tmthseqdjx .gt_col_headings {
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

#tmthseqdjx .gt_col_heading {
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

#tmthseqdjx .gt_column_spanner_outer {
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

#tmthseqdjx .gt_column_spanner_outer:first-child {
  padding-left: 0;
}

#tmthseqdjx .gt_column_spanner_outer:last-child {
  padding-right: 0;
}

#tmthseqdjx .gt_column_spanner {
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

#tmthseqdjx .gt_group_heading {
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

#tmthseqdjx .gt_empty_group_heading {
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

#tmthseqdjx .gt_striped {
  background-color: rgba(128, 128, 128, 0.05);
}

#tmthseqdjx .gt_from_md > :first-child {
  margin-top: 0;
}

#tmthseqdjx .gt_from_md > :last-child {
  margin-bottom: 0;
}

#tmthseqdjx .gt_row {
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

#tmthseqdjx .gt_stub {
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

#tmthseqdjx .gt_summary_row {
  color: #333333;
  background-color: #FFFFFF;
  text-transform: inherit;
  padding-top: 8px;
  padding-bottom: 8px;
  padding-left: 5px;
  padding-right: 5px;
}

#tmthseqdjx .gt_first_summary_row {
  padding-top: 8px;
  padding-bottom: 8px;
  padding-left: 5px;
  padding-right: 5px;
  border-top-style: solid;
  border-top-width: 2px;
  border-top-color: #D3D3D3;
}

#tmthseqdjx .gt_grand_summary_row {
  color: #333333;
  background-color: #FFFFFF;
  text-transform: inherit;
  padding-top: 8px;
  padding-bottom: 8px;
  padding-left: 5px;
  padding-right: 5px;
}

#tmthseqdjx .gt_first_grand_summary_row {
  padding-top: 8px;
  padding-bottom: 8px;
  padding-left: 5px;
  padding-right: 5px;
  border-top-style: double;
  border-top-width: 6px;
  border-top-color: #D3D3D3;
}

#tmthseqdjx .gt_table_body {
  border-top-style: solid;
  border-top-width: 2px;
  border-top-color: #D3D3D3;
  border-bottom-style: solid;
  border-bottom-width: 2px;
  border-bottom-color: #D3D3D3;
}

#tmthseqdjx .gt_footnotes {
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

#tmthseqdjx .gt_footnote {
  margin: 0px;
  font-size: 90%;
  padding: 4px;
}

#tmthseqdjx .gt_sourcenotes {
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

#tmthseqdjx .gt_sourcenote {
  font-size: 90%;
  padding: 4px;
}

#tmthseqdjx .gt_left {
  text-align: left;
}

#tmthseqdjx .gt_center {
  text-align: center;
}

#tmthseqdjx .gt_right {
  text-align: right;
  font-variant-numeric: tabular-nums;
}

#tmthseqdjx .gt_font_normal {
  font-weight: normal;
}

#tmthseqdjx .gt_font_bold {
  font-weight: bold;
}

#tmthseqdjx .gt_font_italic {
  font-style: italic;
}

#tmthseqdjx .gt_super {
  font-size: 65%;
}

#tmthseqdjx .gt_footnote_marks {
  font-style: italic;
  font-size: 65%;
}
</style>

<div id="tmthseqdjx" style="overflow-x:auto;overflow-y:auto;width:auto;height:auto;">

<table class="gt_table">

<thead class="gt_header">

<tr>

<th colspan="5" class="gt_heading gt_title gt_font_normal" style>

Animal Crossing New Horizons
Critters

</th>

</tr>

<tr>

<th colspan="5" class="gt_heading gt_subtitle gt_font_normal gt_bottom_border" style>

(Availability based on Northern
Hemisphere)

</th>

</tr>

</thead>

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

Mar - Jun, Sep - Oct

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

Mar - June

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

Apr - Sep

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

Sep - June

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

Jan - Dec

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

Nov - May

</td>

</tr>

</tbody>

</table>

</div>

<!--/html_preserve-->

# `gt::tab_options()` - new to me\!

``` r
library(gt)
library(tibble)

acnh_bugs_n <- tribble(
  ~name, ~price, ~location, ~time, ~months,
  "Yellow butterfly", 160, "Flying", "4 AM - 7 PM", "Mar - Jun, Sep - Oct",
  "Peacock butterfly", 2500, "Flying by Hybrid Flowers", "4 AM - 7 PM", "Mar - June",
  "Atlas moth", 3000, "On Trees", "7 PM - 4 AM", "Apr - Sep",
  "Centipede", 300, "Hitting Rocks", "4 PM - 11 PM", "Sep - June",
  "Snail", 250, "On Rocks and Bushes (Rain) ", "All Day", "Jan - Dec",
  "Mole cricket", 500, "Underground", "All Day", "Nov - May"
)

# A *ton* of options are available via tab_options()!
# I want to capitalize the column labels (without having to alter the underlying data)
acnh_bugs_n %>%
  gt() %>%
  tab_options(column_labels.text_transform = "capitalize")
```

<!--html_preserve-->

<style>html {
  font-family: -apple-system, BlinkMacSystemFont, 'Segoe UI', Roboto, Oxygen, Ubuntu, Cantarell, 'Helvetica Neue', 'Fira Sans', 'Droid Sans', Arial, sans-serif;
}

#foeeclqlqd .gt_table {
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

#foeeclqlqd .gt_heading {
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

#foeeclqlqd .gt_title {
  color: #333333;
  font-size: 125%;
  font-weight: initial;
  padding-top: 4px;
  padding-bottom: 4px;
  border-bottom-color: #FFFFFF;
  border-bottom-width: 0;
}

#foeeclqlqd .gt_subtitle {
  color: #333333;
  font-size: 85%;
  font-weight: initial;
  padding-top: 0;
  padding-bottom: 4px;
  border-top-color: #FFFFFF;
  border-top-width: 0;
}

#foeeclqlqd .gt_bottom_border {
  border-bottom-style: solid;
  border-bottom-width: 2px;
  border-bottom-color: #D3D3D3;
}

#foeeclqlqd .gt_col_headings {
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

#foeeclqlqd .gt_col_heading {
  color: #333333;
  background-color: #FFFFFF;
  font-size: 100%;
  font-weight: normal;
  text-transform: capitalize;
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

#foeeclqlqd .gt_column_spanner_outer {
  color: #333333;
  background-color: #FFFFFF;
  font-size: 100%;
  font-weight: normal;
  text-transform: capitalize;
  padding-top: 0;
  padding-bottom: 0;
  padding-left: 4px;
  padding-right: 4px;
}

#foeeclqlqd .gt_column_spanner_outer:first-child {
  padding-left: 0;
}

#foeeclqlqd .gt_column_spanner_outer:last-child {
  padding-right: 0;
}

#foeeclqlqd .gt_column_spanner {
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

#foeeclqlqd .gt_group_heading {
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

#foeeclqlqd .gt_empty_group_heading {
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

#foeeclqlqd .gt_striped {
  background-color: rgba(128, 128, 128, 0.05);
}

#foeeclqlqd .gt_from_md > :first-child {
  margin-top: 0;
}

#foeeclqlqd .gt_from_md > :last-child {
  margin-bottom: 0;
}

#foeeclqlqd .gt_row {
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

#foeeclqlqd .gt_stub {
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

#foeeclqlqd .gt_summary_row {
  color: #333333;
  background-color: #FFFFFF;
  text-transform: inherit;
  padding-top: 8px;
  padding-bottom: 8px;
  padding-left: 5px;
  padding-right: 5px;
}

#foeeclqlqd .gt_first_summary_row {
  padding-top: 8px;
  padding-bottom: 8px;
  padding-left: 5px;
  padding-right: 5px;
  border-top-style: solid;
  border-top-width: 2px;
  border-top-color: #D3D3D3;
}

#foeeclqlqd .gt_grand_summary_row {
  color: #333333;
  background-color: #FFFFFF;
  text-transform: inherit;
  padding-top: 8px;
  padding-bottom: 8px;
  padding-left: 5px;
  padding-right: 5px;
}

#foeeclqlqd .gt_first_grand_summary_row {
  padding-top: 8px;
  padding-bottom: 8px;
  padding-left: 5px;
  padding-right: 5px;
  border-top-style: double;
  border-top-width: 6px;
  border-top-color: #D3D3D3;
}

#foeeclqlqd .gt_table_body {
  border-top-style: solid;
  border-top-width: 2px;
  border-top-color: #D3D3D3;
  border-bottom-style: solid;
  border-bottom-width: 2px;
  border-bottom-color: #D3D3D3;
}

#foeeclqlqd .gt_footnotes {
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

#foeeclqlqd .gt_footnote {
  margin: 0px;
  font-size: 90%;
  padding: 4px;
}

#foeeclqlqd .gt_sourcenotes {
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

#foeeclqlqd .gt_sourcenote {
  font-size: 90%;
  padding: 4px;
}

#foeeclqlqd .gt_left {
  text-align: left;
}

#foeeclqlqd .gt_center {
  text-align: center;
}

#foeeclqlqd .gt_right {
  text-align: right;
  font-variant-numeric: tabular-nums;
}

#foeeclqlqd .gt_font_normal {
  font-weight: normal;
}

#foeeclqlqd .gt_font_bold {
  font-weight: bold;
}

#foeeclqlqd .gt_font_italic {
  font-style: italic;
}

#foeeclqlqd .gt_super {
  font-size: 65%;
}

#foeeclqlqd .gt_footnote_marks {
  font-style: italic;
  font-size: 65%;
}
</style>

<div id="foeeclqlqd" style="overflow-x:auto;overflow-y:auto;width:auto;height:auto;">

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

Mar - Jun, Sep - Oct

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

Mar - June

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

Apr - Sep

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

Sep - June

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

Jan - Dec

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

Nov - May

</td>

</tr>

</tbody>

</table>

</div>

<!--/html_preserve-->
