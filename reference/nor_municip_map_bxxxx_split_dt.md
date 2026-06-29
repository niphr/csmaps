# Split map of Norwegian municipalities in data.table format

We conveniently package map datasets for Norwegian municipalities (taken
from Geonorge) that can be used in ggplot2 without needing any geo
libraries. This data is licensed under Creative Commons BY 4.0 (CC BY
4.0).

## Usage

``` r
nor_municip_map_b2024_split_dt

nor_municip_map_b2020_split_dt
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

An object of class `data.table` (inherits from `data.frame`) with 30601
rows and 5 columns.

## Details

Borders for 2024 and 2020 are provided.

## Examples

``` r
# 2024 borders
library(ggplot2)
q <- ggplot(mapping = aes(x = long, y = lat))
q <- q + geom_polygon(
  data = csmaps::nor_municip_map_b2024_split_dt,
  mapping = aes(group = group),
  color = "black",
  fill = "white",
  linewidth = 0.2
)
q <- q + theme_void()
q <- q + coord_quickmap()
q


# 2020 borders
library(ggplot2)
q <- ggplot(mapping = aes(x = long, y = lat))
q <- q + geom_polygon(
  data = csmaps::nor_municip_map_b2020_split_dt,
  mapping = aes(group = group),
  color = "black",
  fill = "white",
  linewidth = 0.2
)
q <- q + theme_void()
q <- q + coord_quickmap()
q
```
