# Split map of Norwegian counties in data.table format

We conveniently package map datasets for Norwegian counties (taken from
Geonorge) that can be used in ggplot2 without needing any geo libraries.
This data is licensed under Creative Commons BY 4.0 (CC BY 4.0).

## Usage

``` r
nor_county_map_b2024_split_dt

nor_county_map_b2020_split_dt

nor_county_position_geolabels_b2024_split_dt

nor_county_position_geolabels_b2020_split_dt

annotate_oslo_nor_map_bxxxx_split_dt()
```

## Format

- long:

  Location code.

- lat:

  Location name.

- order:

  The order that this line should be plotted in.

- group:

  Needs to be used as 'group' aesthetic in ggplot2.

- location_code:

  Location code (municipality code).

An object of class `data.table` (inherits from `data.frame`) with 4537
rows and 5 columns.

An object of class `data.table` (inherits from `data.frame`) with 15
rows and 4 columns.

An object of class `data.table` (inherits from `data.frame`) with 11
rows and 4 columns.

## Details

Borders for 2024 and 2020 are provided.

## Examples

``` r
# 2024 borders
library(ggplot2)
q <- ggplot(mapping = aes(x = long, y = lat))
q <- q + csmaps::annotate_oslo_nor_map_bxxxx_split_dt()
q <- q + geom_polygon(
  data = csmaps::nor_county_map_b2024_split_dt,
  mapping = aes(group = group),
  color = "black",
  fill = "white",
  linewidth = 0.4
)
q <- q + theme_void()
q <- q + coord_quickmap()
q


# 2024 borders
library(ggplot2)
q <- ggplot(mapping = aes(x = long, y = lat))
q <- q + csmaps::annotate_oslo_nor_map_bxxxx_split_dt()
q <- q + geom_polygon(
  data = csmaps::nor_county_map_b2024_split_dt,
  mapping = aes(group = group),
  color = "black",
  fill = "white",
  linewidth = 0.4
)
q <- q + ggrepel::geom_label_repel(
  data = csmaps::nor_county_position_geolabels_b2024_split_dt[repel==TRUE],
  mapping = aes(x = long, y = lat, label = location_code),
  size = 3,
  label.size = 0.1,
  label.r = grid::unit(0, "lines"),
  min.segment.length = 0
)
q <- q + geom_label(
  data = csmaps::nor_county_position_geolabels_b2024_split_dt[repel==FALSE],
  mapping = aes(x = long, y = lat, label = location_code),
  size = 3,
  label.size = 0.1,
  label.r = grid::unit(0, "lines")
)
#> Warning: The `label.size` argument of `geom_label()` is deprecated as of ggplot2 3.5.0.
#> ℹ Please use the `linewidth` argument instead.
q <- q + theme_void()
q <- q + coord_quickmap()
q


# 2020 borders
library(ggplot2)
q <- ggplot(mapping = aes(x = long, y = lat))
q <- q + csmaps::annotate_oslo_nor_map_bxxxx_split_dt()
q <- q + geom_polygon(
  data = csmaps::nor_county_map_b2020_split_dt,
  mapping = aes(group = group),
  color = "black",
  fill = "white",
  linewidth = 0.4
)
q <- q + theme_void()
q <- q + coord_quickmap()
q
```
