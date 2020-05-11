2020-05-11
================

# `gt::fmt_number()` - i know this one\!

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

# Use gt() to make a basic table
acnh_bugs_n %>%
  gt()
```

<!--html_preserve-->

<style>html {
  font-family: -apple-system, BlinkMacSystemFont, 'Segoe UI', Roboto, Oxygen, Ubuntu, Cantarell, 'Helvetica Neue', 'Fira Sans', 'Droid Sans', Arial, sans-serif;
}

#ohbwdeuugd .gt_table {
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

#ohbwdeuugd .gt_heading {
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

#ohbwdeuugd .gt_title {
  color: #333333;
  font-size: 125%;
  font-weight: initial;
  padding-top: 4px;
  padding-bottom: 4px;
  border-bottom-color: #FFFFFF;
  border-bottom-width: 0;
}

#ohbwdeuugd .gt_subtitle {
  color: #333333;
  font-size: 85%;
  font-weight: initial;
  padding-top: 0;
  padding-bottom: 4px;
  border-top-color: #FFFFFF;
  border-top-width: 0;
}

#ohbwdeuugd .gt_bottom_border {
  border-bottom-style: solid;
  border-bottom-width: 2px;
  border-bottom-color: #D3D3D3;
}

#ohbwdeuugd .gt_col_headings {
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

#ohbwdeuugd .gt_col_heading {
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

#ohbwdeuugd .gt_column_spanner_outer {
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

#ohbwdeuugd .gt_column_spanner_outer:first-child {
  padding-left: 0;
}

#ohbwdeuugd .gt_column_spanner_outer:last-child {
  padding-right: 0;
}

#ohbwdeuugd .gt_column_spanner {
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

#ohbwdeuugd .gt_group_heading {
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

#ohbwdeuugd .gt_empty_group_heading {
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

#ohbwdeuugd .gt_striped {
  background-color: rgba(128, 128, 128, 0.05);
}

#ohbwdeuugd .gt_from_md > :first-child {
  margin-top: 0;
}

#ohbwdeuugd .gt_from_md > :last-child {
  margin-bottom: 0;
}

#ohbwdeuugd .gt_row {
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

#ohbwdeuugd .gt_stub {
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

#ohbwdeuugd .gt_summary_row {
  color: #333333;
  background-color: #FFFFFF;
  text-transform: inherit;
  padding-top: 8px;
  padding-bottom: 8px;
  padding-left: 5px;
  padding-right: 5px;
}

#ohbwdeuugd .gt_first_summary_row {
  padding-top: 8px;
  padding-bottom: 8px;
  padding-left: 5px;
  padding-right: 5px;
  border-top-style: solid;
  border-top-width: 2px;
  border-top-color: #D3D3D3;
}

#ohbwdeuugd .gt_grand_summary_row {
  color: #333333;
  background-color: #FFFFFF;
  text-transform: inherit;
  padding-top: 8px;
  padding-bottom: 8px;
  padding-left: 5px;
  padding-right: 5px;
}

#ohbwdeuugd .gt_first_grand_summary_row {
  padding-top: 8px;
  padding-bottom: 8px;
  padding-left: 5px;
  padding-right: 5px;
  border-top-style: double;
  border-top-width: 6px;
  border-top-color: #D3D3D3;
}

#ohbwdeuugd .gt_table_body {
  border-top-style: solid;
  border-top-width: 2px;
  border-top-color: #D3D3D3;
  border-bottom-style: solid;
  border-bottom-width: 2px;
  border-bottom-color: #D3D3D3;
}

#ohbwdeuugd .gt_footnotes {
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

#ohbwdeuugd .gt_footnote {
  margin: 0px;
  font-size: 90%;
  padding: 4px;
}

#ohbwdeuugd .gt_sourcenotes {
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

#ohbwdeuugd .gt_sourcenote {
  font-size: 90%;
  padding: 4px;
}

#ohbwdeuugd .gt_left {
  text-align: left;
}

#ohbwdeuugd .gt_center {
  text-align: center;
}

#ohbwdeuugd .gt_right {
  text-align: right;
  font-variant-numeric: tabular-nums;
}

#ohbwdeuugd .gt_font_normal {
  font-weight: normal;
}

#ohbwdeuugd .gt_font_bold {
  font-weight: bold;
}

#ohbwdeuugd .gt_font_italic {
  font-style: italic;
}

#ohbwdeuugd .gt_super {
  font-size: 65%;
}

#ohbwdeuugd .gt_footnote_marks {
  font-style: italic;
  font-size: 65%;
}
</style>

<div id="ohbwdeuugd" style="overflow-x:auto;overflow-y:auto;width:auto;height:auto;">

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

``` r
# Format numbers using fmt_number() and supplying the columns
# We don't need any decimals, so I'm dropping the decimals - defaults to 2!
acnh_bugs_n %>%
  gt() %>%
  fmt_number(
    columns = vars(price),
    decimals = 0
  )
```

<!--html_preserve-->

<style>html {
  font-family: -apple-system, BlinkMacSystemFont, 'Segoe UI', Roboto, Oxygen, Ubuntu, Cantarell, 'Helvetica Neue', 'Fira Sans', 'Droid Sans', Arial, sans-serif;
}

#pqcpnnxkrj .gt_table {
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

#pqcpnnxkrj .gt_heading {
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

#pqcpnnxkrj .gt_title {
  color: #333333;
  font-size: 125%;
  font-weight: initial;
  padding-top: 4px;
  padding-bottom: 4px;
  border-bottom-color: #FFFFFF;
  border-bottom-width: 0;
}

#pqcpnnxkrj .gt_subtitle {
  color: #333333;
  font-size: 85%;
  font-weight: initial;
  padding-top: 0;
  padding-bottom: 4px;
  border-top-color: #FFFFFF;
  border-top-width: 0;
}

#pqcpnnxkrj .gt_bottom_border {
  border-bottom-style: solid;
  border-bottom-width: 2px;
  border-bottom-color: #D3D3D3;
}

#pqcpnnxkrj .gt_col_headings {
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

#pqcpnnxkrj .gt_col_heading {
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

#pqcpnnxkrj .gt_column_spanner_outer {
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

#pqcpnnxkrj .gt_column_spanner_outer:first-child {
  padding-left: 0;
}

#pqcpnnxkrj .gt_column_spanner_outer:last-child {
  padding-right: 0;
}

#pqcpnnxkrj .gt_column_spanner {
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

#pqcpnnxkrj .gt_group_heading {
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

#pqcpnnxkrj .gt_empty_group_heading {
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

#pqcpnnxkrj .gt_striped {
  background-color: rgba(128, 128, 128, 0.05);
}

#pqcpnnxkrj .gt_from_md > :first-child {
  margin-top: 0;
}

#pqcpnnxkrj .gt_from_md > :last-child {
  margin-bottom: 0;
}

#pqcpnnxkrj .gt_row {
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

#pqcpnnxkrj .gt_stub {
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

#pqcpnnxkrj .gt_summary_row {
  color: #333333;
  background-color: #FFFFFF;
  text-transform: inherit;
  padding-top: 8px;
  padding-bottom: 8px;
  padding-left: 5px;
  padding-right: 5px;
}

#pqcpnnxkrj .gt_first_summary_row {
  padding-top: 8px;
  padding-bottom: 8px;
  padding-left: 5px;
  padding-right: 5px;
  border-top-style: solid;
  border-top-width: 2px;
  border-top-color: #D3D3D3;
}

#pqcpnnxkrj .gt_grand_summary_row {
  color: #333333;
  background-color: #FFFFFF;
  text-transform: inherit;
  padding-top: 8px;
  padding-bottom: 8px;
  padding-left: 5px;
  padding-right: 5px;
}

#pqcpnnxkrj .gt_first_grand_summary_row {
  padding-top: 8px;
  padding-bottom: 8px;
  padding-left: 5px;
  padding-right: 5px;
  border-top-style: double;
  border-top-width: 6px;
  border-top-color: #D3D3D3;
}

#pqcpnnxkrj .gt_table_body {
  border-top-style: solid;
  border-top-width: 2px;
  border-top-color: #D3D3D3;
  border-bottom-style: solid;
  border-bottom-width: 2px;
  border-bottom-color: #D3D3D3;
}

#pqcpnnxkrj .gt_footnotes {
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

#pqcpnnxkrj .gt_footnote {
  margin: 0px;
  font-size: 90%;
  padding: 4px;
}

#pqcpnnxkrj .gt_sourcenotes {
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

#pqcpnnxkrj .gt_sourcenote {
  font-size: 90%;
  padding: 4px;
}

#pqcpnnxkrj .gt_left {
  text-align: left;
}

#pqcpnnxkrj .gt_center {
  text-align: center;
}

#pqcpnnxkrj .gt_right {
  text-align: right;
  font-variant-numeric: tabular-nums;
}

#pqcpnnxkrj .gt_font_normal {
  font-weight: normal;
}

#pqcpnnxkrj .gt_font_bold {
  font-weight: bold;
}

#pqcpnnxkrj .gt_font_italic {
  font-style: italic;
}

#pqcpnnxkrj .gt_super {
  font-size: 65%;
}

#pqcpnnxkrj .gt_footnote_marks {
  font-style: italic;
  font-size: 65%;
}
</style>

<div id="pqcpnnxkrj" style="overflow-x:auto;overflow-y:auto;width:auto;height:auto;">

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

2,500

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

3,000

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

Nov -
May

</td>

</tr>

</tbody>

</table>

</div>

<!--/html_preserve-->

``` r
# If you're using a real currency (i.e. not Bells from Animal Crossing), could easily use fmt_currency() instead!
acnh_bugs_n %>%
  gt() %>%
  fmt_currency(
    columns = vars(price),
    currency = "CAD",
    decimals = 0
  )
```

<!--html_preserve-->

<style>html {
  font-family: -apple-system, BlinkMacSystemFont, 'Segoe UI', Roboto, Oxygen, Ubuntu, Cantarell, 'Helvetica Neue', 'Fira Sans', 'Droid Sans', Arial, sans-serif;
}

#ayuwejxzqu .gt_table {
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

#ayuwejxzqu .gt_heading {
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

#ayuwejxzqu .gt_title {
  color: #333333;
  font-size: 125%;
  font-weight: initial;
  padding-top: 4px;
  padding-bottom: 4px;
  border-bottom-color: #FFFFFF;
  border-bottom-width: 0;
}

#ayuwejxzqu .gt_subtitle {
  color: #333333;
  font-size: 85%;
  font-weight: initial;
  padding-top: 0;
  padding-bottom: 4px;
  border-top-color: #FFFFFF;
  border-top-width: 0;
}

#ayuwejxzqu .gt_bottom_border {
  border-bottom-style: solid;
  border-bottom-width: 2px;
  border-bottom-color: #D3D3D3;
}

#ayuwejxzqu .gt_col_headings {
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

#ayuwejxzqu .gt_col_heading {
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

#ayuwejxzqu .gt_column_spanner_outer {
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

#ayuwejxzqu .gt_column_spanner_outer:first-child {
  padding-left: 0;
}

#ayuwejxzqu .gt_column_spanner_outer:last-child {
  padding-right: 0;
}

#ayuwejxzqu .gt_column_spanner {
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

#ayuwejxzqu .gt_group_heading {
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

#ayuwejxzqu .gt_empty_group_heading {
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

#ayuwejxzqu .gt_striped {
  background-color: rgba(128, 128, 128, 0.05);
}

#ayuwejxzqu .gt_from_md > :first-child {
  margin-top: 0;
}

#ayuwejxzqu .gt_from_md > :last-child {
  margin-bottom: 0;
}

#ayuwejxzqu .gt_row {
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

#ayuwejxzqu .gt_stub {
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

#ayuwejxzqu .gt_summary_row {
  color: #333333;
  background-color: #FFFFFF;
  text-transform: inherit;
  padding-top: 8px;
  padding-bottom: 8px;
  padding-left: 5px;
  padding-right: 5px;
}

#ayuwejxzqu .gt_first_summary_row {
  padding-top: 8px;
  padding-bottom: 8px;
  padding-left: 5px;
  padding-right: 5px;
  border-top-style: solid;
  border-top-width: 2px;
  border-top-color: #D3D3D3;
}

#ayuwejxzqu .gt_grand_summary_row {
  color: #333333;
  background-color: #FFFFFF;
  text-transform: inherit;
  padding-top: 8px;
  padding-bottom: 8px;
  padding-left: 5px;
  padding-right: 5px;
}

#ayuwejxzqu .gt_first_grand_summary_row {
  padding-top: 8px;
  padding-bottom: 8px;
  padding-left: 5px;
  padding-right: 5px;
  border-top-style: double;
  border-top-width: 6px;
  border-top-color: #D3D3D3;
}

#ayuwejxzqu .gt_table_body {
  border-top-style: solid;
  border-top-width: 2px;
  border-top-color: #D3D3D3;
  border-bottom-style: solid;
  border-bottom-width: 2px;
  border-bottom-color: #D3D3D3;
}

#ayuwejxzqu .gt_footnotes {
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

#ayuwejxzqu .gt_footnote {
  margin: 0px;
  font-size: 90%;
  padding: 4px;
}

#ayuwejxzqu .gt_sourcenotes {
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

#ayuwejxzqu .gt_sourcenote {
  font-size: 90%;
  padding: 4px;
}

#ayuwejxzqu .gt_left {
  text-align: left;
}

#ayuwejxzqu .gt_center {
  text-align: center;
}

#ayuwejxzqu .gt_right {
  text-align: right;
  font-variant-numeric: tabular-nums;
}

#ayuwejxzqu .gt_font_normal {
  font-weight: normal;
}

#ayuwejxzqu .gt_font_bold {
  font-weight: bold;
}

#ayuwejxzqu .gt_font_italic {
  font-style: italic;
}

#ayuwejxzqu .gt_super {
  font-size: 65%;
}

#ayuwejxzqu .gt_footnote_marks {
  font-style: italic;
  font-size: 65%;
}
</style>

<div id="ayuwejxzqu" style="overflow-x:auto;overflow-y:auto;width:auto;height:auto;">

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

$160

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

$2,500

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

$3,000

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

$300

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

$250

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

$500

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

# `gt::tab_spanner()` - new to me\!

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

# Add a header "Availability" above the time and months columns using tab_spanner(), which creates a "spanner" column label over existing columns
acnh_bugs_n %>%
  gt() %>%
  tab_spanner(
    label = "Availability",
    columns = vars(time, months)
  )
```

<!--html_preserve-->

<style>html {
  font-family: -apple-system, BlinkMacSystemFont, 'Segoe UI', Roboto, Oxygen, Ubuntu, Cantarell, 'Helvetica Neue', 'Fira Sans', 'Droid Sans', Arial, sans-serif;
}

#uxwgahibml .gt_table {
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

#uxwgahibml .gt_heading {
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

#uxwgahibml .gt_title {
  color: #333333;
  font-size: 125%;
  font-weight: initial;
  padding-top: 4px;
  padding-bottom: 4px;
  border-bottom-color: #FFFFFF;
  border-bottom-width: 0;
}

#uxwgahibml .gt_subtitle {
  color: #333333;
  font-size: 85%;
  font-weight: initial;
  padding-top: 0;
  padding-bottom: 4px;
  border-top-color: #FFFFFF;
  border-top-width: 0;
}

#uxwgahibml .gt_bottom_border {
  border-bottom-style: solid;
  border-bottom-width: 2px;
  border-bottom-color: #D3D3D3;
}

#uxwgahibml .gt_col_headings {
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

#uxwgahibml .gt_col_heading {
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

#uxwgahibml .gt_column_spanner_outer {
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

#uxwgahibml .gt_column_spanner_outer:first-child {
  padding-left: 0;
}

#uxwgahibml .gt_column_spanner_outer:last-child {
  padding-right: 0;
}

#uxwgahibml .gt_column_spanner {
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

#uxwgahibml .gt_group_heading {
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

#uxwgahibml .gt_empty_group_heading {
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

#uxwgahibml .gt_striped {
  background-color: rgba(128, 128, 128, 0.05);
}

#uxwgahibml .gt_from_md > :first-child {
  margin-top: 0;
}

#uxwgahibml .gt_from_md > :last-child {
  margin-bottom: 0;
}

#uxwgahibml .gt_row {
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

#uxwgahibml .gt_stub {
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

#uxwgahibml .gt_summary_row {
  color: #333333;
  background-color: #FFFFFF;
  text-transform: inherit;
  padding-top: 8px;
  padding-bottom: 8px;
  padding-left: 5px;
  padding-right: 5px;
}

#uxwgahibml .gt_first_summary_row {
  padding-top: 8px;
  padding-bottom: 8px;
  padding-left: 5px;
  padding-right: 5px;
  border-top-style: solid;
  border-top-width: 2px;
  border-top-color: #D3D3D3;
}

#uxwgahibml .gt_grand_summary_row {
  color: #333333;
  background-color: #FFFFFF;
  text-transform: inherit;
  padding-top: 8px;
  padding-bottom: 8px;
  padding-left: 5px;
  padding-right: 5px;
}

#uxwgahibml .gt_first_grand_summary_row {
  padding-top: 8px;
  padding-bottom: 8px;
  padding-left: 5px;
  padding-right: 5px;
  border-top-style: double;
  border-top-width: 6px;
  border-top-color: #D3D3D3;
}

#uxwgahibml .gt_table_body {
  border-top-style: solid;
  border-top-width: 2px;
  border-top-color: #D3D3D3;
  border-bottom-style: solid;
  border-bottom-width: 2px;
  border-bottom-color: #D3D3D3;
}

#uxwgahibml .gt_footnotes {
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

#uxwgahibml .gt_footnote {
  margin: 0px;
  font-size: 90%;
  padding: 4px;
}

#uxwgahibml .gt_sourcenotes {
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

#uxwgahibml .gt_sourcenote {
  font-size: 90%;
  padding: 4px;
}

#uxwgahibml .gt_left {
  text-align: left;
}

#uxwgahibml .gt_center {
  text-align: center;
}

#uxwgahibml .gt_right {
  text-align: right;
  font-variant-numeric: tabular-nums;
}

#uxwgahibml .gt_font_normal {
  font-weight: normal;
}

#uxwgahibml .gt_font_bold {
  font-weight: bold;
}

#uxwgahibml .gt_font_italic {
  font-style: italic;
}

#uxwgahibml .gt_super {
  font-size: 65%;
}

#uxwgahibml .gt_footnote_marks {
  font-style: italic;
  font-size: 65%;
}
</style>

<div id="uxwgahibml" style="overflow-x:auto;overflow-y:auto;width:auto;height:auto;">

<table class="gt_table">

<thead class="gt_col_headings">

<tr>

<th class="gt_col_heading gt_center gt_columns_bottom_border" rowspan="2" colspan="1">

name

</th>

<th class="gt_col_heading gt_center gt_columns_bottom_border" rowspan="2" colspan="1">

price

</th>

<th class="gt_col_heading gt_center gt_columns_bottom_border" rowspan="2" colspan="1">

location

</th>

<th class="gt_center gt_columns_top_border gt_column_spanner_outer" rowspan="1" colspan="2">

<span class="gt_column_spanner">Availability</span>

</th>

</tr>

<tr>

<th class="gt_col_heading gt_columns_bottom_border gt_center" rowspan="1" colspan="1">

time

</th>

<th class="gt_col_heading gt_columns_bottom_border gt_center" rowspan="1" colspan="1">

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
