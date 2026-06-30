# Maps of Norwegian municipalities in sf format

We conveniently package map datasets for Norwegian municipalities (taken
from Geonorge) as simple features objects, suitable for use with the sf
package and
[`ggplot2::geom_sf()`](https://ggplot2.tidyverse.org/reference/ggsf.html).
This data is licensed under Creative Commons BY 4.0 (CC BY 4.0).

## Usage

``` r
nor_municip_map_b2024_default_sf

nor_municip_map_b2020_default_sf

nor_municip_map_b2019_default_sf
```

## Format

- geometry:

  MULTIPOLYGON geometry column (CRS: WGS84 / EPSG:4326).

- location_code:

  Municipality code (e.g. `"municip_nor0301"`).

An object of class `sf` (inherits from `data.frame`) with 356 rows and 2
columns.

An object of class `sf` (inherits from `data.frame`) with 422 rows and 2
columns.

## Source

Kartverket / Geonorge <https://www.geonorge.no/>. License: CC BY 4.0.

## Details

Borders for 2024, 2020, and 2019 are provided.

## Examples

``` r
library(ggplot2)
q <- ggplot(csmaps::nor_municip_map_b2024_default_sf)
q <- q + geom_sf(fill = "white", color = "black", linewidth = 0.2)
q <- q + theme_void()
q
```
