# Maps of Norwegian counties in sf format

We conveniently package map datasets for Norwegian counties (taken from
Geonorge) as simple features objects, suitable for use with the sf
package and
[`ggplot2::geom_sf()`](https://ggplot2.tidyverse.org/reference/ggsf.html).
This data is licensed under Creative Commons BY 4.0 (CC BY 4.0).

## Usage

``` r
nor_county_map_b2024_default_sf

nor_county_map_b2020_default_sf

nor_county_map_b2019_default_sf

nor_county_map_b2017_default_sf
```

## Format

- geometry:

  MULTIPOLYGON geometry column (CRS: WGS84 / EPSG:4326).

- location_code:

  County code (e.g. `"county_nor03"`).

An object of class `sf` (inherits from `data.frame`) with 11 rows and 2
columns.

An object of class `sf` (inherits from `data.frame`) with 18 rows and 2
columns.

An object of class `sf` (inherits from `data.frame`) with 19 rows and 2
columns.

## Source

Kartverket / Geonorge <https://www.geonorge.no/>. License: CC BY 4.0.

## Details

Borders for 2024, 2020, 2019, and 2017 are provided.

## Examples

``` r
library(ggplot2)
q <- ggplot(csmaps::nor_county_map_b2024_default_sf)
q <- q + geom_sf(fill = "white", color = "black", linewidth = 0.4)
q <- q + theme_void()
q
```
