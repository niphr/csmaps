#' Position of the "Oslo" title label for the insert-Oslo map layout
#'
#' A single-row data.table giving the longitude/latitude coordinates at which
#' the "Oslo" text label should be placed when using an \code{_insert_oslo}
#' map dataset.
#'
#' @format
#' \describe{
#' \item{long}{Longitude in decimal degrees (WGS84) for the label anchor.}
#' \item{lat}{Latitude in decimal degrees (WGS84) for the label anchor.}
#' }
#' @source Derived from the insert-Oslo layout coordinates; no external source.
#' @examples
#' # 2020 borders
#' library(ggplot2)
#' q <- ggplot(mapping = aes(x = long, y = lat))
#' q <- q + geom_polygon(
#'   data = csmaps::nor_municip_map_b2020_insert_oslo_dt,
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
#' @name nor_xxx_position_title_insert_oslo_bxxxx_insert_oslo_dt
"nor_xxx_position_title_insert_oslo_b2024_insert_oslo_dt"

#' @rdname nor_xxx_position_title_insert_oslo_bxxxx_insert_oslo_dt
"nor_xxx_position_title_insert_oslo_b2020_insert_oslo_dt"

#' @rdname nor_xxx_position_title_insert_oslo_bxxxx_insert_oslo_dt
"nor_xxx_position_title_insert_oslo_b2019_insert_oslo_dt"

#' @rdname nor_xxx_position_title_insert_oslo_bxxxx_insert_oslo_dt
"nor_xxx_position_title_insert_oslo_b2017_insert_oslo_dt"
