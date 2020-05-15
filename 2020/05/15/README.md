2020-05-14
================

# `gt::tab_footnote()` - i know this one\!

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

# Add a footnote using tab_footnote()
# Specify it's a column label footnote via cells_column_labels
acnh_bugs_n %>%
  gt() %>%
  tab_footnote(
    footnote = "Price is in Bells",
    locations = cells_column_labels(columns = vars(price))
  )
```

<!--html_preserve-->

<style>html {
  font-family: -apple-system, BlinkMacSystemFont, 'Segoe UI', Roboto, Oxygen, Ubuntu, Cantarell, 'Helvetica Neue', 'Fira Sans', 'Droid Sans', Arial, sans-serif;
}

#ojhhzdneiy .gt_table {
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

#ojhhzdneiy .gt_heading {
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

#ojhhzdneiy .gt_title {
  color: #333333;
  font-size: 125%;
  font-weight: initial;
  padding-top: 4px;
  padding-bottom: 4px;
  border-bottom-color: #FFFFFF;
  border-bottom-width: 0;
}

#ojhhzdneiy .gt_subtitle {
  color: #333333;
  font-size: 85%;
  font-weight: initial;
  padding-top: 0;
  padding-bottom: 4px;
  border-top-color: #FFFFFF;
  border-top-width: 0;
}

#ojhhzdneiy .gt_bottom_border {
  border-bottom-style: solid;
  border-bottom-width: 2px;
  border-bottom-color: #D3D3D3;
}

#ojhhzdneiy .gt_col_headings {
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

#ojhhzdneiy .gt_col_heading {
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

#ojhhzdneiy .gt_column_spanner_outer {
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

#ojhhzdneiy .gt_column_spanner_outer:first-child {
  padding-left: 0;
}

#ojhhzdneiy .gt_column_spanner_outer:last-child {
  padding-right: 0;
}

#ojhhzdneiy .gt_column_spanner {
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

#ojhhzdneiy .gt_group_heading {
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

#ojhhzdneiy .gt_empty_group_heading {
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

#ojhhzdneiy .gt_striped {
  background-color: rgba(128, 128, 128, 0.05);
}

#ojhhzdneiy .gt_from_md > :first-child {
  margin-top: 0;
}

#ojhhzdneiy .gt_from_md > :last-child {
  margin-bottom: 0;
}

#ojhhzdneiy .gt_row {
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

#ojhhzdneiy .gt_stub {
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

#ojhhzdneiy .gt_summary_row {
  color: #333333;
  background-color: #FFFFFF;
  text-transform: inherit;
  padding-top: 8px;
  padding-bottom: 8px;
  padding-left: 5px;
  padding-right: 5px;
}

#ojhhzdneiy .gt_first_summary_row {
  padding-top: 8px;
  padding-bottom: 8px;
  padding-left: 5px;
  padding-right: 5px;
  border-top-style: solid;
  border-top-width: 2px;
  border-top-color: #D3D3D3;
}

#ojhhzdneiy .gt_grand_summary_row {
  color: #333333;
  background-color: #FFFFFF;
  text-transform: inherit;
  padding-top: 8px;
  padding-bottom: 8px;
  padding-left: 5px;
  padding-right: 5px;
}

#ojhhzdneiy .gt_first_grand_summary_row {
  padding-top: 8px;
  padding-bottom: 8px;
  padding-left: 5px;
  padding-right: 5px;
  border-top-style: double;
  border-top-width: 6px;
  border-top-color: #D3D3D3;
}

#ojhhzdneiy .gt_table_body {
  border-top-style: solid;
  border-top-width: 2px;
  border-top-color: #D3D3D3;
  border-bottom-style: solid;
  border-bottom-width: 2px;
  border-bottom-color: #D3D3D3;
}

#ojhhzdneiy .gt_footnotes {
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

#ojhhzdneiy .gt_footnote {
  margin: 0px;
  font-size: 90%;
  padding: 4px;
}

#ojhhzdneiy .gt_sourcenotes {
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

#ojhhzdneiy .gt_sourcenote {
  font-size: 90%;
  padding: 4px;
}

#ojhhzdneiy .gt_left {
  text-align: left;
}

#ojhhzdneiy .gt_center {
  text-align: center;
}

#ojhhzdneiy .gt_right {
  text-align: right;
  font-variant-numeric: tabular-nums;
}

#ojhhzdneiy .gt_font_normal {
  font-weight: normal;
}

#ojhhzdneiy .gt_font_bold {
  font-weight: bold;
}

#ojhhzdneiy .gt_font_italic {
  font-style: italic;
}

#ojhhzdneiy .gt_super {
  font-size: 65%;
}

#ojhhzdneiy .gt_footnote_marks {
  font-style: italic;
  font-size: 65%;
}
</style>

<div id="ojhhzdneiy" style="overflow-x:auto;overflow-y:auto;width:auto;height:auto;">

<table class="gt_table">

<thead class="gt_col_headings">

<tr>

<th class="gt_col_heading gt_columns_bottom_border gt_left" rowspan="1" colspan="1">

name

</th>

<th class="gt_col_heading gt_columns_bottom_border gt_right" rowspan="1" colspan="1">

price<sup class="gt_footnote_marks">1</sup>

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

<tfoot>

<tr class="gt_footnotes">

<td colspan="5">

<p class="gt_footnote">

<sup class="gt_footnote_marks"> <em>1</em> </sup>

Price is in Bells
<br />

</p>

</td>

</tr>

</tfoot>

</table>

</div>

<!--/html_preserve-->

``` r
# You can add a footnote to individual cells, too! Add to the body via cells_body()
# You can target specific rows with an expression that evaluates to TRUE (here, it's targetting any rows where the name is "Mole cricket"
acnh_bugs_n %>%
  gt() %>%
  tab_footnote(
    footnote = "Don't worry, you'll hear it. Dig!",
    locations = cells_body(
      columns = vars(location),
      rows = name == "Mole cricket"
    )
  )
```

<!--html_preserve-->

<style>html {
  font-family: -apple-system, BlinkMacSystemFont, 'Segoe UI', Roboto, Oxygen, Ubuntu, Cantarell, 'Helvetica Neue', 'Fira Sans', 'Droid Sans', Arial, sans-serif;
}

#wgzqtkgojk .gt_table {
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

#wgzqtkgojk .gt_heading {
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

#wgzqtkgojk .gt_title {
  color: #333333;
  font-size: 125%;
  font-weight: initial;
  padding-top: 4px;
  padding-bottom: 4px;
  border-bottom-color: #FFFFFF;
  border-bottom-width: 0;
}

#wgzqtkgojk .gt_subtitle {
  color: #333333;
  font-size: 85%;
  font-weight: initial;
  padding-top: 0;
  padding-bottom: 4px;
  border-top-color: #FFFFFF;
  border-top-width: 0;
}

#wgzqtkgojk .gt_bottom_border {
  border-bottom-style: solid;
  border-bottom-width: 2px;
  border-bottom-color: #D3D3D3;
}

#wgzqtkgojk .gt_col_headings {
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

#wgzqtkgojk .gt_col_heading {
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

#wgzqtkgojk .gt_column_spanner_outer {
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

#wgzqtkgojk .gt_column_spanner_outer:first-child {
  padding-left: 0;
}

#wgzqtkgojk .gt_column_spanner_outer:last-child {
  padding-right: 0;
}

#wgzqtkgojk .gt_column_spanner {
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

#wgzqtkgojk .gt_group_heading {
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

#wgzqtkgojk .gt_empty_group_heading {
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

#wgzqtkgojk .gt_striped {
  background-color: rgba(128, 128, 128, 0.05);
}

#wgzqtkgojk .gt_from_md > :first-child {
  margin-top: 0;
}

#wgzqtkgojk .gt_from_md > :last-child {
  margin-bottom: 0;
}

#wgzqtkgojk .gt_row {
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

#wgzqtkgojk .gt_stub {
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

#wgzqtkgojk .gt_summary_row {
  color: #333333;
  background-color: #FFFFFF;
  text-transform: inherit;
  padding-top: 8px;
  padding-bottom: 8px;
  padding-left: 5px;
  padding-right: 5px;
}

#wgzqtkgojk .gt_first_summary_row {
  padding-top: 8px;
  padding-bottom: 8px;
  padding-left: 5px;
  padding-right: 5px;
  border-top-style: solid;
  border-top-width: 2px;
  border-top-color: #D3D3D3;
}

#wgzqtkgojk .gt_grand_summary_row {
  color: #333333;
  background-color: #FFFFFF;
  text-transform: inherit;
  padding-top: 8px;
  padding-bottom: 8px;
  padding-left: 5px;
  padding-right: 5px;
}

#wgzqtkgojk .gt_first_grand_summary_row {
  padding-top: 8px;
  padding-bottom: 8px;
  padding-left: 5px;
  padding-right: 5px;
  border-top-style: double;
  border-top-width: 6px;
  border-top-color: #D3D3D3;
}

#wgzqtkgojk .gt_table_body {
  border-top-style: solid;
  border-top-width: 2px;
  border-top-color: #D3D3D3;
  border-bottom-style: solid;
  border-bottom-width: 2px;
  border-bottom-color: #D3D3D3;
}

#wgzqtkgojk .gt_footnotes {
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

#wgzqtkgojk .gt_footnote {
  margin: 0px;
  font-size: 90%;
  padding: 4px;
}

#wgzqtkgojk .gt_sourcenotes {
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

#wgzqtkgojk .gt_sourcenote {
  font-size: 90%;
  padding: 4px;
}

#wgzqtkgojk .gt_left {
  text-align: left;
}

#wgzqtkgojk .gt_center {
  text-align: center;
}

#wgzqtkgojk .gt_right {
  text-align: right;
  font-variant-numeric: tabular-nums;
}

#wgzqtkgojk .gt_font_normal {
  font-weight: normal;
}

#wgzqtkgojk .gt_font_bold {
  font-weight: bold;
}

#wgzqtkgojk .gt_font_italic {
  font-style: italic;
}

#wgzqtkgojk .gt_super {
  font-size: 65%;
}

#wgzqtkgojk .gt_footnote_marks {
  font-style: italic;
  font-size: 65%;
}
</style>

<div id="wgzqtkgojk" style="overflow-x:auto;overflow-y:auto;width:auto;height:auto;">

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

Underground<sup class="gt_footnote_marks">1</sup>

</td>

<td class="gt_row gt_left">

All Day

</td>

<td class="gt_row gt_left">

Nov - May

</td>

</tr>

</tbody>

<tfoot>

<tr class="gt_footnotes">

<td colspan="5">

<p class="gt_footnote">

<sup class="gt_footnote_marks"> <em>1</em> </sup>

Don’t worry, you’ll hear it. Dig\! <br />

</p>

</td>

</tr>

</tfoot>

</table>

</div>

<!--/html_preserve-->

# `gt::opt_footnote_marks()` - new to me\!

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

# If you don't like the default footnote formatting, you can change it with opt_footnote_marks()
acnh_bugs_n %>%
  gt() %>%
  tab_footnote(
    footnote = "Price is in Bells",
    locations = cells_column_labels(columns = vars(price))
  ) %>%
  opt_footnote_marks(marks = "standard")
```

<!--html_preserve-->

<style>html {
  font-family: -apple-system, BlinkMacSystemFont, 'Segoe UI', Roboto, Oxygen, Ubuntu, Cantarell, 'Helvetica Neue', 'Fira Sans', 'Droid Sans', Arial, sans-serif;
}

#uzizgzattk .gt_table {
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

#uzizgzattk .gt_heading {
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

#uzizgzattk .gt_title {
  color: #333333;
  font-size: 125%;
  font-weight: initial;
  padding-top: 4px;
  padding-bottom: 4px;
  border-bottom-color: #FFFFFF;
  border-bottom-width: 0;
}

#uzizgzattk .gt_subtitle {
  color: #333333;
  font-size: 85%;
  font-weight: initial;
  padding-top: 0;
  padding-bottom: 4px;
  border-top-color: #FFFFFF;
  border-top-width: 0;
}

#uzizgzattk .gt_bottom_border {
  border-bottom-style: solid;
  border-bottom-width: 2px;
  border-bottom-color: #D3D3D3;
}

#uzizgzattk .gt_col_headings {
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

#uzizgzattk .gt_col_heading {
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

#uzizgzattk .gt_column_spanner_outer {
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

#uzizgzattk .gt_column_spanner_outer:first-child {
  padding-left: 0;
}

#uzizgzattk .gt_column_spanner_outer:last-child {
  padding-right: 0;
}

#uzizgzattk .gt_column_spanner {
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

#uzizgzattk .gt_group_heading {
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

#uzizgzattk .gt_empty_group_heading {
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

#uzizgzattk .gt_striped {
  background-color: rgba(128, 128, 128, 0.05);
}

#uzizgzattk .gt_from_md > :first-child {
  margin-top: 0;
}

#uzizgzattk .gt_from_md > :last-child {
  margin-bottom: 0;
}

#uzizgzattk .gt_row {
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

#uzizgzattk .gt_stub {
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

#uzizgzattk .gt_summary_row {
  color: #333333;
  background-color: #FFFFFF;
  text-transform: inherit;
  padding-top: 8px;
  padding-bottom: 8px;
  padding-left: 5px;
  padding-right: 5px;
}

#uzizgzattk .gt_first_summary_row {
  padding-top: 8px;
  padding-bottom: 8px;
  padding-left: 5px;
  padding-right: 5px;
  border-top-style: solid;
  border-top-width: 2px;
  border-top-color: #D3D3D3;
}

#uzizgzattk .gt_grand_summary_row {
  color: #333333;
  background-color: #FFFFFF;
  text-transform: inherit;
  padding-top: 8px;
  padding-bottom: 8px;
  padding-left: 5px;
  padding-right: 5px;
}

#uzizgzattk .gt_first_grand_summary_row {
  padding-top: 8px;
  padding-bottom: 8px;
  padding-left: 5px;
  padding-right: 5px;
  border-top-style: double;
  border-top-width: 6px;
  border-top-color: #D3D3D3;
}

#uzizgzattk .gt_table_body {
  border-top-style: solid;
  border-top-width: 2px;
  border-top-color: #D3D3D3;
  border-bottom-style: solid;
  border-bottom-width: 2px;
  border-bottom-color: #D3D3D3;
}

#uzizgzattk .gt_footnotes {
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

#uzizgzattk .gt_footnote {
  margin: 0px;
  font-size: 90%;
  padding: 4px;
}

#uzizgzattk .gt_sourcenotes {
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

#uzizgzattk .gt_sourcenote {
  font-size: 90%;
  padding: 4px;
}

#uzizgzattk .gt_left {
  text-align: left;
}

#uzizgzattk .gt_center {
  text-align: center;
}

#uzizgzattk .gt_right {
  text-align: right;
  font-variant-numeric: tabular-nums;
}

#uzizgzattk .gt_font_normal {
  font-weight: normal;
}

#uzizgzattk .gt_font_bold {
  font-weight: bold;
}

#uzizgzattk .gt_font_italic {
  font-style: italic;
}

#uzizgzattk .gt_super {
  font-size: 65%;
}

#uzizgzattk .gt_footnote_marks {
  font-style: italic;
  font-size: 65%;
}
</style>

<div id="uzizgzattk" style="overflow-x:auto;overflow-y:auto;width:auto;height:auto;">

<table class="gt_table">

<thead class="gt_col_headings">

<tr>

<th class="gt_col_heading gt_columns_bottom_border gt_left" rowspan="1" colspan="1">

name

</th>

<th class="gt_col_heading gt_columns_bottom_border gt_right" rowspan="1" colspan="1">

price<sup class="gt_footnote_marks">\*</sup>

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

<tfoot>

<tr class="gt_footnotes">

<td colspan="5">

<p class="gt_footnote">

<sup class="gt_footnote_marks"> <em>\*</em> </sup>

Price is in Bells <br />

</p>

</td>

</tr>

</tfoot>

</table>

</div>

<!--/html_preserve-->
