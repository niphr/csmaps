# ***************************** #
# map default ----

## data.table ----
#' Maps of Norwegian municipalities in data.table format
#'
#' We conveniently package map datasets for Norwegian municipalities
#' (taken from Geonorge) that can be used in ggplot2 without needing any geo
#' libraries. This data is licensed under Creative Commons BY 4.0 (CC BY 4.0).
#'
#' Borders for 2024, 2020, and 2019 are provided.
#'
#' @format
#' \describe{
#' \item{long}{Longitude in decimal degrees (WGS84).}
#' \item{lat}{Latitude in decimal degrees (WGS84).}
#' \item{order}{The order that this line should be plotted in.}
#' \item{group}{Polygon group identifier; use as the \code{group} aesthetic in ggplot2.}
#' \item{location_code}{Municipality code (e.g. \code{"municip_nor0301"}).}
#' }
#' @source Kartverket / Geonorge \url{https://www.geonorge.no/}. License: CC BY 4.0.
#' @examples
#' # 2024 borders
#' library(ggplot2)
#' q <- ggplot(mapping = aes(x = long, y = lat))
#' q <- q + geom_polygon(
#'   data = csmaps::nor_municip_map_b2024_default_dt,
#'   mapping = aes(group = group),
#'   color = "black",
#'   fill = "white",
#'   linewidth = 0.2
#' )
#' q <- q + theme_void()
#' q <- q + coord_quickmap()
#' q
#'
#' # 2020 borders
#' library(ggplot2)
#' q <- ggplot(mapping = aes(x = long, y = lat))
#' q <- q + geom_polygon(
#'   data = csmaps::nor_municip_map_b2020_default_dt,
#'   mapping = aes(group = group),
#'   color = "black",
#'   fill = "white",
#'   linewidth = 0.2
#' )
#' q <- q + theme_void()
#' q <- q + coord_quickmap()
#' q
#'
#' # 2019 borders
#' library(ggplot2)
#' q <- ggplot(mapping = aes(x = long, y = lat))
#' q <- q + geom_polygon(
#'   data = csmaps::nor_municip_map_b2019_default_dt,
#'   mapping = aes(group = group),
#'   color = "black",
#'   fill = "white",
#'   linewidth = 0.2
#' )
#' q <- q + theme_void()
#' q <- q + coord_quickmap()
#' q
#' @name nor_municip_map_bxxxx_default_dt
"nor_municip_map_b2024_default_dt"

#' @name nor_municip_map_bxxxx_default_dt
"nor_municip_map_b2020_default_dt"

#' @rdname nor_municip_map_bxxxx_default_dt
"nor_municip_map_b2019_default_dt"

#' @rdname nor_municip_map_bxxxx_default_dt
"nor_municip_position_geolabels_b2024_default_dt"

#' @rdname nor_municip_map_bxxxx_default_dt
"nor_municip_position_geolabels_b2020_default_dt"

#' @rdname nor_municip_map_bxxxx_default_dt
"nor_municip_position_geolabels_b2019_default_dt"

## sf format ----
#' Maps of Norwegian municipalities in sf format
#'
#' We conveniently package map datasets for Norwegian municipalities
#' (taken from Geonorge) as simple features objects, suitable for use with the
#' \pkg{sf} package and \code{ggplot2::geom_sf()}.
#' This data is licensed under Creative Commons BY 4.0 (CC BY 4.0).
#'
#' Borders for 2024, 2020, and 2019 are provided.
#'
#' @format
#' \describe{
#' \item{geometry}{MULTIPOLYGON geometry column (CRS: WGS84 / EPSG:4326).}
#' \item{location_code}{Municipality code (e.g. \code{"municip_nor0301"}).}
#' }
#' @source Kartverket / Geonorge \url{https://www.geonorge.no/}. License: CC BY 4.0.
#' @examples
#' library(ggplot2)
#' q <- ggplot(csmaps::nor_municip_map_b2024_default_sf)
#' q <- q + geom_sf(fill = "white", color = "black", linewidth = 0.2)
#' q <- q + theme_void()
#' q
#' @name nor_municip_map_bxxxx_default_sf
"nor_municip_map_b2024_default_sf"

#' @name nor_municip_map_bxxxx_default_sf
"nor_municip_map_b2020_default_sf"

#' @rdname nor_municip_map_bxxxx_default_sf
"nor_municip_map_b2019_default_sf"

# ***************************** #
# map insert oslo ----

#' Maps of Norwegian municipalities with an insert for Oslo in data.table format
#'
#' We conveniently package map datasets for Norwegian municipalities
#' (taken from Geonorge) that can be used in ggplot2 without needing any geo
#' libraries. An inset panel positions Oslo wards in the lower-left corner for
#' better readability. This data is licensed under Creative Commons BY 4.0
#' (CC BY 4.0).
#'
#' Borders for 2024, 2020, and 2019 are provided.
#'
#' @format
#' \describe{
#' \item{long}{Longitude in decimal degrees (WGS84).}
#' \item{lat}{Latitude in decimal degrees (WGS84).}
#' \item{order}{The order that this line should be plotted in.}
#' \item{group}{Polygon group identifier; use as the \code{group} aesthetic in ggplot2.}
#' \item{location_code}{Municipality code (e.g. \code{"municip_nor0301"}).}
#' }
#' @source Kartverket / Geonorge \url{https://www.geonorge.no/}. License: CC BY 4.0.
#' @examples
#' # 2024 borders
#' library(ggplot2)
#' q <- ggplot(mapping = aes(x = long, y = lat))
#' q <- q + geom_polygon(
#'   data = csmaps::nor_municip_map_b2024_insert_oslo_dt,
#'   mapping = aes(group = group),
#'   color = "black",
#'   fill = "white",
#'   linewidth = 0.2
#' )
#' q <- q + annotate(
#'   "text",
#'   x = csmaps::nor_xxx_position_title_insert_oslo_b2024_insert_oslo_dt$long,
#'   y = csmaps::nor_xxx_position_title_insert_oslo_b2024_insert_oslo_dt$lat,
#'   label = "Oslo"
#' )
#' q <- q + theme_void()
#' q <- q + coord_quickmap()
#' q
#'
#' # 2020 borders
#' library(ggplot2)
#' q <- ggplot(mapping = aes(x = long, y = lat))
#' q <- q + geom_polygon(
#'   data = csmaps::nor_municip_map_b2020_insert_oslo_dt,
#'   mapping = aes(group = group),
#'   color = "black",
#'   fill = "white",
#'   linewidth = 0.2
#' )
#' q <- q + annotate(
#'   "text",
#'   x = csmaps::nor_xxx_position_title_insert_oslo_b2020_insert_oslo_dt$long,
#'   y = csmaps::nor_xxx_position_title_insert_oslo_b2020_insert_oslo_dt$lat,
#'   label = "Oslo"
#' )
#' q <- q + theme_void()
#' q <- q + coord_quickmap()
#' q
#'
#' # 2019 borders
#' library(ggplot2)
#' q <- ggplot(mapping = aes(x = long, y = lat))
#' q <- q + geom_polygon(
#'   data = csmaps::nor_municip_map_b2019_insert_oslo_dt,
#'   mapping = aes(group = group),
#'   color = "black",
#'   fill = "white",
#'   linewidth = 0.2
#' )
#' q <- q + annotate(
#'   "text",
#'   x = csmaps::nor_xxx_position_title_insert_oslo_b2019_insert_oslo_dt$long,
#'   y = csmaps::nor_xxx_position_title_insert_oslo_b2019_insert_oslo_dt$lat,
#'   label = "Oslo"
#' )
#' q <- q + theme_void()
#' q <- q + coord_quickmap()
#' q
#' @name nor_municip_map_bxxxx_insert_oslo_dt
"nor_municip_map_b2024_insert_oslo_dt"

#' @name nor_municip_map_bxxxx_insert_oslo_dt
"nor_municip_map_b2020_insert_oslo_dt"

#' @rdname nor_municip_map_bxxxx_insert_oslo_dt
"nor_municip_map_b2019_insert_oslo_dt"

#' @rdname nor_municip_map_bxxxx_insert_oslo_dt
"nor_municip_position_geolabels_b2024_insert_oslo_dt"

#' @rdname nor_municip_map_bxxxx_insert_oslo_dt
"nor_municip_position_geolabels_b2020_insert_oslo_dt"

#' @rdname nor_municip_map_bxxxx_insert_oslo_dt
"nor_municip_position_geolabels_b2019_insert_oslo_dt"

# ***************************** #
# map split ----

#' Split map of Norwegian municipalities in data.table format
#'
#' We conveniently package map datasets for Norwegian municipalities
#' (taken from Geonorge) that can be used in ggplot2 without needing any geo
#' libraries. The split layout repositions Svalbard and Jan Mayen as separate
#' panels to reduce whitespace. This data is licensed under Creative Commons BY
#' 4.0 (CC BY 4.0).
#'
#' Borders for 2024 and 2020 are provided.
#'
#' @format
#' \describe{
#' \item{long}{Longitude in decimal degrees (WGS84).}
#' \item{lat}{Latitude in decimal degrees (WGS84).}
#' \item{order}{The order that this line should be plotted in.}
#' \item{group}{Polygon group identifier; use as the \code{group} aesthetic in ggplot2.}
#' \item{location_code}{Municipality code (e.g. \code{"municip_nor0301"}).}
#' }
#' @source Kartverket / Geonorge \url{https://www.geonorge.no/}. License: CC BY 4.0.
#' @examples
#' # 2024 borders
#' library(ggplot2)
#' q <- ggplot(mapping = aes(x = long, y = lat))
#' q <- q + geom_polygon(
#'   data = csmaps::nor_municip_map_b2024_split_dt,
#'   mapping = aes(group = group),
#'   color = "black",
#'   fill = "white",
#'   linewidth = 0.2
#' )
#' q <- q + theme_void()
#' q <- q + coord_quickmap()
#' q
#'
#' # 2020 borders
#' library(ggplot2)
#' q <- ggplot(mapping = aes(x = long, y = lat))
#' q <- q + geom_polygon(
#'   data = csmaps::nor_municip_map_b2020_split_dt,
#'   mapping = aes(group = group),
#'   color = "black",
#'   fill = "white",
#'   linewidth = 0.2
#' )
#' q <- q + theme_void()
#' q <- q + coord_quickmap()
#' q
#' @name nor_municip_map_bxxxx_split_dt
"nor_municip_map_b2024_split_dt"

#' @name nor_municip_map_bxxxx_split_dt
"nor_municip_map_b2020_split_dt"




