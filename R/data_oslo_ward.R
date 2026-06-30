## data.table ----

#' Map of Oslo wards (bydeler) in data.table format
#'
#' We conveniently package map datasets for Oslo wards (bydeler)
#' (taken from Oslo municipality) that can be used in ggplot2 without needing any geo
#' libraries. This data is licensed under Creative Commons BY 4.0 (CC BY 4.0).
#'
#' Borders provided for 2024, 2020.
#'
#' @format
#' \describe{
#' \item{long}{Longitude in decimal degrees (WGS84).}
#' \item{lat}{Latitude in decimal degrees (WGS84).}
#' \item{order}{The order that this line should be plotted in.}
#' \item{group}{Polygon group identifier; use as the \code{group} aesthetic in ggplot2.}
#' \item{location_code}{Ward code (e.g. \code{"wardoslo_nor030101"}).}
#' }
#' @source Oslo kommune. License: CC BY 4.0.
#' @examples
#' # 2024 borders
#' library(ggplot2)
#' q <- ggplot(mapping = aes(x = long, y = lat))
#' q <- q + geom_polygon(
#'   data = csmaps::oslo_ward_map_b2024_default_dt,
#'   mapping = aes(group = group, fill = location_code),
#'   color = "black",
#'   fill = "white",
#'   linewidth = 0.4
#' )
#' q <- q + geom_label(
#'   data = csmaps::oslo_ward_position_geolabels_b2024_default_dt,
#'   mapping = aes(label = location_code),
#'   color = "red"
#' )
#' q <- q + theme_void()
#' q <- q + coord_quickmap()
#' q
#'
#' # 2020 borders
#' library(ggplot2)
#' q <- ggplot(mapping = aes(x = long, y = lat))
#' q <- q + geom_polygon(
#'   data = csmaps::oslo_ward_map_b2020_default_dt,
#'   mapping = aes(group = group, fill = location_code),
#'   color = "black",
#'   fill = "white",
#'   linewidth = 0.4
#' )
#' q <- q + geom_label(
#'   data = csmaps::oslo_ward_position_geolabels_b2020_default_dt,
#'   mapping = aes(label = location_code),
#'   color = "red"
#' )
#' q <- q + theme_void()
#' q <- q + coord_quickmap()
#' q
#' @name oslo_ward_map_bxxxx_default_dt
"oslo_ward_map_b2024_default_dt"

#' @name oslo_ward_map_bxxxx_default_dt
"oslo_ward_map_b2020_default_dt"

#' @rdname oslo_ward_map_bxxxx_default_dt
"oslo_ward_position_geolabels_b2024_default_dt"

#' @rdname oslo_ward_map_bxxxx_default_dt
"oslo_ward_position_geolabels_b2020_default_dt"

## sf format ----

#' Map of Oslo wards (bydeler) in sf format
#'
#' We conveniently package map datasets for Oslo wards (bydeler)
#' (taken from Oslo municipality) as simple features objects, suitable for use
#' with the \pkg{sf} package and \code{ggplot2::geom_sf()}.
#' This data is licensed under Creative Commons BY 4.0 (CC BY 4.0).
#'
#' Borders provided for 2024, 2020.
#'
#' @format
#' \describe{
#' \item{geometry}{MULTIPOLYGON geometry column (CRS: WGS84 / EPSG:4326).}
#' \item{location_code}{Ward code (e.g. \code{"wardoslo_nor030101"}).}
#' }
#' @source Oslo kommune. License: CC BY 4.0.
#' @examples
#' library(ggplot2)
#' q <- ggplot(csmaps::oslo_ward_map_b2024_default_sf)
#' q <- q + geom_sf(fill = "white", color = "black", linewidth = 0.4)
#' q <- q + theme_void()
#' q
#' @name oslo_ward_map_bxxxx_default_sf
"oslo_ward_map_b2020_default_sf"

#' @name oslo_ward_map_bxxxx_default_sf
"oslo_ward_map_b2024_default_sf"
