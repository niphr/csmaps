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
#' \item{long}{Location code.}
#' \item{lat}{Location name.}
#' \item{order}{The order that this line should be plotted in.}
#' \item{group}{Needs to be used as 'group' aesthetic in ggplot2.}
#' \item{location_code}{Location code (municipality code).}
#' }
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
#' This data is licensed under Creative Commons BY 4.0 (CC BY 4.0).
#'
#' Borders for 2024, 2020, 2019, and 2017 are provided.
#'
#' @format
#' \describe{
#' \item{geometry}{Multipolygon}
#' \item{location_code}{Location code (municipality code).}
#' }
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
#' libraries. This data is licensed under Creative Commons BY 4.0 (CC BY 4.0).
#'
#' Borders for 2024, 2020, 2019, and 2017 are provided.
#'
#' @format
#' \describe{
#' \item{long}{Location code.}
#' \item{lat}{Location name.}
#' \item{order}{The order that this line should be plotted in.}
#' \item{group}{Needs to be used as 'group' aesthetic in ggplot2.}
#' \item{location_code}{Location code (county code).}
#' }
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
#' libraries. This data is licensed under Creative Commons BY 4.0 (CC BY 4.0).
#'
#' Borders for 2024 and 2020 are provided.
#'
#' @format
#' \describe{
#' \item{long}{Location code.}
#' \item{lat}{Location name.}
#' \item{order}{The order that this line should be plotted in.}
#' \item{group}{Needs to be used as 'group' aesthetic in ggplot2.}
#' \item{location_code}{Location code (municipality code).}
#' }
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
