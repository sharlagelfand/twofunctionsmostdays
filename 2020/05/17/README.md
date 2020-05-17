2020-05-17
================

``` r
library(gt)
library(tibble)

acnh_bugs_n <- tribble(
  ~name, ~price, ~location, ~time, ~months, ~image,
  "Yellow butterfly", 160, "Flying", "4 AM - 7 PM", "Mar - Jun, Sep - Oct", "https://vignette.wikia.nocookie.net/animalcrossing/images/f/fa/NH-Icon-yellowbutterfly.png",
  "Peacock butterfly", 2500, "Flying by Hybrid Flowers", "4 AM - 7 PM", "Mar - June", "https://vignette.wikia.nocookie.net/animalcrossing/images/8/8f/NH-Icon-peacockbutterfly.png",
  "Atlas moth", 3000, "On Trees", "7 PM - 4 AM", "Apr - Sep", "https://vignette.wikia.nocookie.net/animalcrossing/images/6/6a/NH-Icon-atlasmoth.png",
  "Centipede", 300, "Hitting Rocks", "4 PM - 11 PM", "Sep - June", "https://vignette.wikia.nocookie.net/animalcrossing/images/3/30/NH-Icon-centipede.png",
  "Snail", 250, "On Rocks and Bushes (Rain) ", "All Day", "Jan - Dec", "https://vignette.wikia.nocookie.net/animalcrossing/images/b/b1/NH-Icon-snail.png",
  "Mole cricket", 500, "Underground", "All Day", "Nov - May", "https://vignette.wikia.nocookie.net/animalcrossing/images/0/00/NH-Icon-molecricket.png"
)

gt(acnh_bugs_n) %>%
  # Use number formatting with comma separator for thousands and no decimals
  fmt_number(columns = vars(price), decimals = 0) %>%
  # Convert URL in image variable to an actual image
  text_transform(
    locations = cells_body(
      columns = vars(image)
    ),
    fn = function(x) {
      web_image(x, height = 50)
    }
  ) %>%
  # And move that column to the front!
  cols_move_to_start(columns = vars(image)) %>%
  # Capitalize columns without changing underlying data
  tab_options(column_labels.text_transform = "capitalize") %>%
  # Add a heading spanner above variables time and months
  tab_spanner(
    label = "Availability",
    columns = vars(time, months)
  ) %>%
  # Bold column labels and spanners
  tab_style(
    style = cell_text(weight = "bold"),
    locations = list(
      cells_column_labels(columns = everything()),
      cells_column_spanners("Availability")
    )
  ) %>%
  # Add a footnote on the Price column label and change the footnote marker
  tab_footnote(
    footnote = "Price is in Bells",
    locations = cells_column_labels(columns = vars(price))
  ) %>%
  opt_footnote_marks(marks = "standard") %>%
  # Add a source note, using markdown!
  tab_source_note(md("Source: Daniel Chen's [{animalcrossing} package](https://github.com/chendaniely/animalcrossing)")) %>%
  # Add a heading and subtitle
  tab_header(
    title = "Animal Crossing New Horizons Critters",
    subtitle = "(Availability based on Northern Hemisphere)"
  )
```

<!--html_preserve-->

<style>html {
  font-family: -apple-system, BlinkMacSystemFont, 'Segoe UI', Roboto, Oxygen, Ubuntu, Cantarell, 'Helvetica Neue', 'Fira Sans', 'Droid Sans', Arial, sans-serif;
}

#kqwjqnnwpt .gt_table {
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

#kqwjqnnwpt .gt_heading {
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

#kqwjqnnwpt .gt_title {
  color: #333333;
  font-size: 125%;
  font-weight: initial;
  padding-top: 4px;
  padding-bottom: 4px;
  border-bottom-color: #FFFFFF;
  border-bottom-width: 0;
}

#kqwjqnnwpt .gt_subtitle {
  color: #333333;
  font-size: 85%;
  font-weight: initial;
  padding-top: 0;
  padding-bottom: 4px;
  border-top-color: #FFFFFF;
  border-top-width: 0;
}

#kqwjqnnwpt .gt_bottom_border {
  border-bottom-style: solid;
  border-bottom-width: 2px;
  border-bottom-color: #D3D3D3;
}

#kqwjqnnwpt .gt_col_headings {
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

#kqwjqnnwpt .gt_col_heading {
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

#kqwjqnnwpt .gt_column_spanner_outer {
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

#kqwjqnnwpt .gt_column_spanner_outer:first-child {
  padding-left: 0;
}

#kqwjqnnwpt .gt_column_spanner_outer:last-child {
  padding-right: 0;
}

#kqwjqnnwpt .gt_column_spanner {
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

#kqwjqnnwpt .gt_group_heading {
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

#kqwjqnnwpt .gt_empty_group_heading {
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

#kqwjqnnwpt .gt_striped {
  background-color: rgba(128, 128, 128, 0.05);
}

#kqwjqnnwpt .gt_from_md > :first-child {
  margin-top: 0;
}

#kqwjqnnwpt .gt_from_md > :last-child {
  margin-bottom: 0;
}

#kqwjqnnwpt .gt_row {
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

#kqwjqnnwpt .gt_stub {
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

#kqwjqnnwpt .gt_summary_row {
  color: #333333;
  background-color: #FFFFFF;
  text-transform: inherit;
  padding-top: 8px;
  padding-bottom: 8px;
  padding-left: 5px;
  padding-right: 5px;
}

#kqwjqnnwpt .gt_first_summary_row {
  padding-top: 8px;
  padding-bottom: 8px;
  padding-left: 5px;
  padding-right: 5px;
  border-top-style: solid;
  border-top-width: 2px;
  border-top-color: #D3D3D3;
}

#kqwjqnnwpt .gt_grand_summary_row {
  color: #333333;
  background-color: #FFFFFF;
  text-transform: inherit;
  padding-top: 8px;
  padding-bottom: 8px;
  padding-left: 5px;
  padding-right: 5px;
}

#kqwjqnnwpt .gt_first_grand_summary_row {
  padding-top: 8px;
  padding-bottom: 8px;
  padding-left: 5px;
  padding-right: 5px;
  border-top-style: double;
  border-top-width: 6px;
  border-top-color: #D3D3D3;
}

#kqwjqnnwpt .gt_table_body {
  border-top-style: solid;
  border-top-width: 2px;
  border-top-color: #D3D3D3;
  border-bottom-style: solid;
  border-bottom-width: 2px;
  border-bottom-color: #D3D3D3;
}

#kqwjqnnwpt .gt_footnotes {
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

#kqwjqnnwpt .gt_footnote {
  margin: 0px;
  font-size: 90%;
  padding: 4px;
}

#kqwjqnnwpt .gt_sourcenotes {
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

#kqwjqnnwpt .gt_sourcenote {
  font-size: 90%;
  padding: 4px;
}

#kqwjqnnwpt .gt_left {
  text-align: left;
}

#kqwjqnnwpt .gt_center {
  text-align: center;
}

#kqwjqnnwpt .gt_right {
  text-align: right;
  font-variant-numeric: tabular-nums;
}

#kqwjqnnwpt .gt_font_normal {
  font-weight: normal;
}

#kqwjqnnwpt .gt_font_bold {
  font-weight: bold;
}

#kqwjqnnwpt .gt_font_italic {
  font-style: italic;
}

#kqwjqnnwpt .gt_super {
  font-size: 65%;
}

#kqwjqnnwpt .gt_footnote_marks {
  font-style: italic;
  font-size: 65%;
}
</style>

<div id="kqwjqnnwpt" style="overflow-x:auto;overflow-y:auto;width:auto;height:auto;">

<table class="gt_table">

<thead class="gt_header">

<tr>

<th colspan="6" class="gt_heading gt_title gt_font_normal" style>

Animal Crossing New Horizons
Critters

</th>

</tr>

<tr>

<th colspan="6" class="gt_heading gt_subtitle gt_font_normal gt_bottom_border" style>

(Availability based on Northern
Hemisphere)

</th>

</tr>

</thead>

<thead class="gt_col_headings">

<tr>

<th class="gt_col_heading gt_center gt_columns_bottom_border" rowspan="2" colspan="1" style="font-weight: bold;">

image

</th>

<th class="gt_col_heading gt_center gt_columns_bottom_border" rowspan="2" colspan="1" style="font-weight: bold;">

name

</th>

<th class="gt_col_heading gt_center gt_columns_bottom_border" rowspan="2" colspan="1" style="font-weight: bold;">

price<sup class="gt_footnote_marks">\*</sup>

</th>

<th class="gt_col_heading gt_center gt_columns_bottom_border" rowspan="2" colspan="1" style="font-weight: bold;">

location

</th>

<th class="gt_center gt_columns_top_border gt_column_spanner_outer" rowspan="1" colspan="2" style="font-weight: bold;">

<span class="gt_column_spanner">Availability</span>

</th>

</tr>

<tr>

<th class="gt_col_heading gt_columns_bottom_border gt_center" rowspan="1" colspan="1" style="font-weight: bold;">

time

</th>

<th class="gt_col_heading gt_columns_bottom_border gt_center" rowspan="1" colspan="1" style="font-weight: bold;">

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

2,500

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

3,000

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

<img src="https://vignette.wikia.nocookie.net/animalcrossing/images/3/30/NH-Icon-centipede.png" style="height:50px;">

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

<img src="https://vignette.wikia.nocookie.net/animalcrossing/images/0/00/NH-Icon-molecricket.png" style="height:50px;">

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

<tfoot class="gt_sourcenotes">

<tr>

<td class="gt_sourcenote" colspan="6">

Source: Daniel Chen’s
<a href="https://github.com/chendaniely/animalcrossing">{animalcrossing}
package</a>

</td>

</tr>

</tfoot>

<tfoot>

<tr class="gt_footnotes">

<td colspan="6">

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
