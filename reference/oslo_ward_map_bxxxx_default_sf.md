# Map of Oslo wards (bydeler) in sf format

We conveniently package map datasets for Oslo wards (bydeler) (taken
from Oslo municipality) as simple features objects, suitable for use
with the sf package and
[`ggplot2::geom_sf()`](https://ggplot2.tidyverse.org/reference/ggsf.html).
This data is licensed under Creative Commons BY 4.0 (CC BY 4.0).

## Usage

``` r
oslo_ward_map_b2020_default_sf

oslo_ward_map_b2024_default_sf
```

## Format

- geometry:

  MULTIPOLYGON geometry column (CRS: WGS84 / EPSG:4326).

- location_code:

  Ward code (e.g. `"wardoslo_nor030101"`).

An object of class `sf` (inherits from `data.frame`) with 15 rows and 2
columns.

## Source

Oslo kommune. License: CC BY 4.0.

## Details

Borders provided for 2024, 2020.

## Examples

``` r
library(ggplot2)
q <- ggplot(csmaps::oslo_ward_map_b2024_default_sf)
q <- q + geom_sf(fill = "white", color = "black", linewidth = 0.4)
q <- q + theme_void()
q
```
