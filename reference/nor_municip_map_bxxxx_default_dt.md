# Maps of Norwegian municipalities in data.table format

We conveniently package map datasets for Norwegian municipalities (taken
from Geonorge) that can be used in ggplot2 without needing any geo
libraries. This data is licensed under Creative Commons BY 4.0 (CC BY
4.0).

## Usage

``` r
nor_municip_map_b2024_default_dt

nor_municip_map_b2020_default_dt

nor_municip_map_b2019_default_dt

nor_municip_position_geolabels_b2024_default_dt

nor_municip_position_geolabels_b2020_default_dt

nor_municip_position_geolabels_b2019_default_dt
```

## Format

- long:

  Longitude in decimal degrees (WGS84).

- lat:

  Latitude in decimal degrees (WGS84).

- order:

  The order that this line should be plotted in.

- group:

  Polygon group identifier; use as the `group` aesthetic in ggplot2.

- location_code:

  Municipality code (e.g. `"municip_nor0301"`).

An object of class `data.table` (inherits from `data.frame`) with 30601
rows and 5 columns.

An object of class `data.table` (inherits from `data.frame`) with 31705
rows and 5 columns.

An object of class `data.table` (inherits from `data.frame`) with 356
rows and 3 columns.

An object of class `data.table` (inherits from `data.frame`) with 356
rows and 3 columns.

An object of class `data.table` (inherits from `data.frame`) with 422
rows and 3 columns.

## Source

Kartverket / Geonorge <https://www.geonorge.no/>. License: CC BY 4.0.

## Details

Borders for 2024, 2020, and 2019 are provided.

## Examples

``` r
# 2024 borders
library(ggplot2)
q <- ggplot(mapping = aes(x = long, y = lat))
q <- q + geom_polygon(
  data = csmaps::nor_municip_map_b2024_default_dt,
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
  data = csmaps::nor_municip_map_b2020_default_dt,
  mapping = aes(group = group),
  color = "black",
  fill = "white",
  linewidth = 0.2
)
q <- q + theme_void()
q <- q + coord_quickmap()
q


# 2019 borders
library(ggplot2)
q <- ggplot(mapping = aes(x = long, y = lat))
q <- q + geom_polygon(
  data = csmaps::nor_municip_map_b2019_default_dt,
  mapping = aes(group = group),
  color = "black",
  fill = "white",
  linewidth = 0.2
)
q <- q + theme_void()
q <- q + coord_quickmap()
q
```
