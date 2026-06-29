# Interactive maps

``` r
library(ggplot2)
library(data.table)
#> 
#> Attaching package: 'data.table'
#> The following object is masked from 'package:base':
#> 
#>     %notin%
library(magrittr)
```

## `sf` for interactive maps

We provide the option of how to use `sf` class object to create
interactive maps. It requres the `leaflet` package.

``` r
pd_county <- csmaps::nor_county_map_b2024_default_sf
leaflet::leaflet(
  pd_county,
  options = leaflet::leafletOptions(preferCanvas = F)
) %>%
  leaflet::addProviderTiles(leaflet::providers$Esri.WorldGrayCanvas) %>%
  leaflet::addPolygons(
    weight = 0.3,
    opacity = 1,
    color = "black", 
    fillColor = "white",
    fillOpacity = 0.9
  )
```
