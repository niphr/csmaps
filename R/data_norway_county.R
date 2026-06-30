# ***************************** #
# map default ----

## data.table ----
#' Maps of Norwegian counties in data.table format
#'
#' We conveniently package map datasets for Norwegian counties
#' (taken from Geonorge) that can be used in ggplot2 without needing any geo
#' libraries. This data is licensed under Creative Commons BY 4.0 (CC BY 4.0).
#'
#' Borders for 2024, 2020, 2019, and 2017 are provided.
#'
#' @format
#' \describe{
#' \item{long}{Longitude in decimal degrees (WGS84).}
#' \item{lat}{Latitude in decimal degrees (WGS84).}
#' \item{order}{The order that this line should be plotted in.}
#' \item{group}{Polygon group identifier; use as the \code{group} aesthetic in ggplot2.}
#' \item{location_code}{County code (e.g. \code{"county_nor03"}).}
#' }
#' @source Kartverket / Geonorge \url{https://www.geonorge.no/}. License: CC BY 4.0.
#' @examples
#' # 2024 borders
#' library(ggplot2)
#' q <- ggplot(mapping = aes(x = long, y = lat))
#' q <- q + geom_polygon(
#'   data = csmaps::nor_county_map_b2024_default_dt,
#'   mapping = aes(group = group),
#'   color = "black",
#'   fill = "white",
#'   linewidth = 0.4
#' )
#' q <- q + theme_void()
#' q <- q + coord_quickmap()
#' q
#'
#' # 2020 borders
#' library(ggplot2)
#' q <- ggplot(mapping = aes(x = long, y = lat))
#' q <- q + geom_polygon(
#'   data = csmaps::nor_county_map_b2020_default_dt,
#'   mapping = aes(group = group),
#'   color = "black",
#'   fill = "white",
#'   linewidth = 0.4
#' )
#' q <- q + theme_void()
#' q <- q + coord_quickmap()
#' q
#'
#' # 2019 borders
#' library(ggplot2)
#' q <- ggplot(mapping = aes(x = long, y = lat))
#' q <- q + geom_polygon(
#'   data = csmaps::nor_county_map_b2019_default_dt,
#'   mapping = aes(group = group),
#'   color = "black",
#'   fill = "white",
#'   linewidth = 0.4
#' )
#' q <- q + theme_void()
#' q <- q + coord_quickmap()
#' q
#'
#' # 2017 borders
#' library(ggplot2)
#' q <- ggplot(mapping = aes(x = long, y = lat))
#' q <- q + geom_polygon(
#'   data = csmaps::nor_county_map_b2017_default_dt,
#'   mapping = aes(group = group),
#'   color = "black",
#'   fill = "white",
#'   linewidth = 0.4
#' )
#' q <- q + theme_void()
#' q <- q + coord_quickmap()
#' q
#' @name nor_county_map_bxxxx_default_dt
"nor_county_map_b2024_default_dt"

#' @name nor_county_map_bxxxx_default_dt
"nor_county_map_b2020_default_dt"

#' @rdname nor_county_map_bxxxx_default_dt
"nor_county_map_b2019_default_dt"

#' @rdname nor_county_map_bxxxx_default_dt
"nor_county_map_b2017_default_dt"

#' @rdname nor_county_map_bxxxx_default_dt
"nor_county_position_geolabels_b2024_default_dt"

#' @rdname nor_county_map_bxxxx_default_dt
"nor_county_position_geolabels_b2020_default_dt"

#' @rdname nor_county_map_bxxxx_default_dt
"nor_county_position_geolabels_b2019_default_dt"

#' @rdname nor_county_map_bxxxx_default_dt
"nor_county_position_geolabels_b2017_default_dt"

## sf format ----
#' Maps of Norwegian counties in sf format
#'
#' We conveniently package map datasets for Norwegian counties
#' (taken from Geonorge) as simple features objects, suitable for use with the
#' \pkg{sf} package and \code{ggplot2::geom_sf()}.
#' This data is licensed under Creative Commons BY 4.0 (CC BY 4.0).
#'
#' Borders for 2024, 2020, 2019, and 2017 are provided.
#'
#' @format
#' \describe{
#' \item{geometry}{MULTIPOLYGON geometry column (CRS: WGS84 / EPSG:4326).}
#' \item{location_code}{County code (e.g. \code{"county_nor03"}).}
#' }
#' @source Kartverket / Geonorge \url{https://www.geonorge.no/}. License: CC BY 4.0.
#' @examples
#' library(ggplot2)
#' q <- ggplot(csmaps::nor_county_map_b2024_default_sf)
#' q <- q + geom_sf(fill = "white", color = "black", linewidth = 0.4)
#' q <- q + theme_void()
#' q
#' @name nor_county_map_bxxxx_default_sf
"nor_county_map_b2024_default_sf"

#' @name nor_county_map_bxxxx_default_sf
"nor_county_map_b2020_default_sf"

#' @name nor_county_map_bxxxx_default_sf
"nor_county_map_b2019_default_sf"

#' @name nor_county_map_bxxxx_default_sf
"nor_county_map_b2017_default_sf"

# ***************************** #
# map insert oslo ----

#' Maps of Norwegian counties with an insert for Oslo in data.table format
#'
#' We conveniently package map datasets for Norwegian counties
#' (taken from Geonorge) that can be used in ggplot2 without needing any geo
#' libraries. An inset panel positions Oslo in the lower-left corner for better
#' readability. This data is licensed under Creative Commons BY 4.0 (CC BY 4.0).
#'
#' Borders for 2024, 2020, 2019, and 2017 are provided.
#'
#' @format
#' \describe{
#' \item{long}{Longitude in decimal degrees (WGS84).}
#' \item{lat}{Latitude in decimal degrees (WGS84).}
#' \item{order}{The order that this line should be plotted in.}
#' \item{group}{Polygon group identifier; use as the \code{group} aesthetic in ggplot2.}
#' \item{location_code}{County code (e.g. \code{"county_nor03"}).}
#' }
#' @source Kartverket / Geonorge \url{https://www.geonorge.no/}. License: CC BY 4.0.
#' @examples
#' # 2024 borders
#' library(ggplot2)
#' q <- ggplot(mapping = aes(x = long, y = lat))
#' q <- q + geom_polygon(
#'   data = csmaps::nor_county_map_b2024_insert_oslo_dt,
#'   mapping = aes(group = group),
#'   color = "black",
#'   fill = "white",
#'   linewidth = 0.4
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
#'
#' # 2020 borders
#' library(ggplot2)
#' q <- ggplot(mapping = aes(x = long, y = lat))
#' q <- q + geom_polygon(
#'   data = csmaps::nor_county_map_b2020_insert_oslo_dt,
#'   mapping = aes(group = group),
#'   color = "black",
#'   fill = "white",
#'   linewidth = 0.4
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
#'   data = csmaps::nor_county_map_b2019_insert_oslo_dt,
#'   mapping = aes(group = group),
#'   color = "black",
#'   fill = "white",
#'   linewidth = 0.4
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
#'
#' # 2017 borders
#' library(ggplot2)
#' q <- ggplot(mapping = aes(x = long, y = lat))
#' q <- q + geom_polygon(
#'   data = csmaps::nor_county_map_b2017_insert_oslo_dt,
#'   mapping = aes(group = group),
#'   color = "black",
#'   fill = "white",
#'   linewidth = 0.4
#' )
#' q <- q + annotate(
#'   "text",
#'   x = csmaps::nor_xxx_position_title_insert_oslo_b2017_insert_oslo_dt$long,
#'   y = csmaps::nor_xxx_position_title_insert_oslo_b2017_insert_oslo_dt$lat,
#'   label = "Oslo"
#' )
#' q <- q + theme_void()
#' q <- q + coord_quickmap()
#' q
#' @name nor_county_map_bxxxx_insert_oslo_dt
"nor_county_map_b2024_insert_oslo_dt"

#' @name nor_county_map_bxxxx_insert_oslo_dt
"nor_county_map_b2020_insert_oslo_dt"

#' @rdname nor_county_map_bxxxx_insert_oslo_dt
"nor_county_map_b2019_insert_oslo_dt"

#' @rdname nor_county_map_bxxxx_insert_oslo_dt
"nor_county_map_b2017_insert_oslo_dt"

#' @rdname nor_county_map_bxxxx_insert_oslo_dt
"nor_county_position_geolabels_b2024_insert_oslo_dt"

#' @rdname nor_county_map_bxxxx_insert_oslo_dt
"nor_county_position_geolabels_b2020_insert_oslo_dt"

#' @rdname nor_county_map_bxxxx_insert_oslo_dt
"nor_county_position_geolabels_b2019_insert_oslo_dt"

#' @rdname nor_county_map_bxxxx_insert_oslo_dt
"nor_county_position_geolabels_b2017_insert_oslo_dt"

# ***************************** #
# map split ----

#' Split map of Norwegian counties in data.table format
#'
#' We conveniently package map datasets for Norwegian counties
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
#' \item{location_code}{County code (e.g. \code{"county_nor03"}).}
#' }
#' @source Kartverket / Geonorge \url{https://www.geonorge.no/}. License: CC BY 4.0.
#' @examples
#' # 2024 borders
#' library(ggplot2)
#' q <- ggplot(mapping = aes(x = long, y = lat))
#' q <- q + csmaps::annotate_oslo_nor_map_bxxxx_split_dt()
#' q <- q + geom_polygon(
#'   data = csmaps::nor_county_map_b2024_split_dt,
#'   mapping = aes(group = group),
#'   color = "black",
#'   fill = "white",
#'   linewidth = 0.4
#' )
#' q <- q + theme_void()
#' q <- q + coord_quickmap()
#' q
#'
#' # 2024 borders
#' library(ggplot2)
#' q <- ggplot(mapping = aes(x = long, y = lat))
#' q <- q + csmaps::annotate_oslo_nor_map_bxxxx_split_dt()
#' q <- q + geom_polygon(
#'   data = csmaps::nor_county_map_b2024_split_dt,
#'   mapping = aes(group = group),
#'   color = "black",
#'   fill = "white",
#'   linewidth = 0.4
#' )
#' q <- q + ggrepel::geom_label_repel(
#'   data = csmaps::nor_county_position_geolabels_b2024_split_dt[repel==TRUE],
#'   mapping = aes(x = long, y = lat, label = location_code),
#'   size = 3,
#'   label.size = 0.1,
#'   label.r = grid::unit(0, "lines"),
#'   min.segment.length = 0
#' )
#' q <- q + geom_label(
#'   data = csmaps::nor_county_position_geolabels_b2024_split_dt[repel==FALSE],
#'   mapping = aes(x = long, y = lat, label = location_code),
#'   size = 3,
#'   label.size = 0.1,
#'   label.r = grid::unit(0, "lines")
#' )
#' q <- q + theme_void()
#' q <- q + coord_quickmap()
#' q
#'
#' # 2020 borders
#' library(ggplot2)
#' q <- ggplot(mapping = aes(x = long, y = lat))
#' q <- q + csmaps::annotate_oslo_nor_map_bxxxx_split_dt()
#' q <- q + geom_polygon(
#'   data = csmaps::nor_county_map_b2020_split_dt,
#'   mapping = aes(group = group),
#'   color = "black",
#'   fill = "white",
#'   linewidth = 0.4
#' )
#' q <- q + theme_void()
#' q <- q + coord_quickmap()
#' q
#' @name nor_county_map_bxxxx_split_dt
"nor_county_map_b2024_split_dt"

#' @name nor_county_map_bxxxx_split_dt
"nor_county_map_b2020_split_dt"

#' @rdname nor_county_map_bxxxx_split_dt
"nor_county_position_geolabels_b2024_split_dt"

#' @rdname nor_county_map_bxxxx_split_dt
"nor_county_position_geolabels_b2020_split_dt"

#' Annotate a split Norwegian map with an Oslo label box
#'
#' Returns a list of \code{ggplot2::annotate()} layers that draw a white
#' rectangle and an "Oslo" text label in the lower-left panel of any
#' \code{_split_dt} map layout. Add this list to a \pkg{ggplot2} plot with
#' \code{+}.
#'
#' @return A list of two \code{ggplot2} layer objects (a rectangle and a text
#'   annotation). Add the list directly to a ggplot with \code{+}.
#'
#' @rdname nor_county_map_bxxxx_split_dt
#' @export
annotate_oslo_nor_map_bxxxx_split_dt <- function(){
  list(
    # ggplot2::annotate(
    #   "rect",
    #   xmin = 0.5,
    #   xmax = 3.9,
    #   ymin = 58.9,
    #   ymax = 61.4,
    #   alpha = .2,
    #   fill = "grey"
    # ),
    ggplot2::annotate(
      "rect",
      xmin = 0.5,
      xmax = 3.9,
      ymin = 58.9,
      ymax = 61.4,
      fill = "white",
      color = "black"
    ),
    ggplot2::annotate(
      "text",
      x = 2.2,
      y = 59.15,
      label = "Oslo"
    )
  )
}
