library(data.table)

gen_nor_county_position_geolabels <- function(x_year_end, split = F, insert = F) {
  location_code <- NULL
  long <- NULL
  lat <- NULL
  stopifnot(x_year_end %in% c("2017", "2019", "2020", "2024"))

  if (x_year_end == 2017) {
    label_positions <- data.table(
      location_code = c(
        "county_nor01", "county_nor02", "county_nor03", "county_nor04",
        "county_nor05", "county_nor06", "county_nor07", "county_nor08",
        "county_nor09", "county_nor10", "county_nor11", "county_nor12",
        "county_nor14", "county_nor15", "county_nor16", "county_nor17",
        "county_nor18", "county_nor19", "county_nor20"
      ),
      long = c(
        11.266137, 11.2, 10.72028, 11.5,
        9.248258, 9.3, 10.0, 8.496352,
        8.45, 7.2, 6.1, 6.5,
        6.415354, 7.8, 9.650999, 11.546003,
        14.8, 19.244275, 24.7
      ),

      lat = c(
        59.33375, 60.03851, 59.98, 61.26886,
        61.25501, 60.3, 59.32481, 59.47989,
        58.6, 58.4, 58.7, 60.25533,
        61.6, 62.5, 63.43384, 67.29402,
        66.5, 68.9, 69.6
      ),
      repel = T
    )
  } else if (x_year_end == 2019) {
    label_positions <- data.table(
      location_code = c(
        "county_nor01", "county_nor02", "county_nor03", "county_nor04",
        "county_nor05", "county_nor06", "county_nor07", "county_nor08",
        "county_nor09", "county_nor10", "county_nor11", "county_nor12",
        "county_nor14", "county_nor15", "county_nor18", "county_nor19",
        "county_nor20", "county_nor50"
      ),
      long = c(
        11.266137, 11.2, 10.72028, 11.5, 9.248258, 9.3, 10.0, 8.496352,
        8.45, 7.2, 6.1, 6.5, 6.415354, 7.8, 14.8, 19.244275, 24.7, 11
      ),

      lat = c(
        59.33375, 60.03851, 59.98, 61.26886, 61.25501, 60.3, 59.32481, 59.47989,
        58.6, 58.4, 58.7, 60.25533, 61.6, 62.5, 66.5, 68.9, 69.6, 63
      ),
      repel = T
    )
  } else if (x_year_end == 2020) {
    label_positions <- rbindlist(list(
      data.table(
        location_code = "county_nor30",
        long = 8.85,
        lat = 60.60,
        repel = T
      ),
      data.table(
        location_code = "county_nor03",
        long = 10.72028,
        lat = 59.98,
        repel = T
      ),
      data.table(
        location_code = "county_nor34",
        long = 11.0,
        lat = 61.86886,
        repel = T
      ),
      data.table(
        location_code = "county_nor38",
        long = 8.5,
        lat = 59.32481,
        repel = T
      ),
      data.table(
        location_code = "county_nor42",
        long = 7.8,
        lat = 58.3,
        repel = T
      ),
      data.table(
        location_code = "county_nor11",
        long = 6.1,
        lat = 58.7,
        repel = T
      ),
      data.table(
        location_code = "county_nor46",
        long = 6.5,
        lat = 61.45,
        repel = T
      ),
      data.table(
        location_code = "county_nor15",
        long = 7.8,
        lat = 62.5,
        repel = T
      ),
      data.table(
        location_code = "county_nor18",
        long = 14.8,
        lat = 66.75,
        repel = T
      ),
      data.table(
        location_code = "county_nor54",
        long = 22.94275,
        lat = 69.5,
        repel = T
      ),
      data.table(
        location_code = "county_nor50",
        long = 12.0,
        lat = 64.15,
        repel = T
      )
    ))
  } else if (x_year_end == 2024) {
    label_positions <- rbindlist(list(
      data.table(
        location_code = "county_nor31", # Østfold
        long = 11.5,
        lat = 59.0,
        repel = T
      ),
      data.table(
        location_code = "county_nor32", # Akershus
        long = 11.2,
        lat = 60.03851,
        repel = T
      ),
      data.table(
        location_code = "county_nor33", # Buskerud
        long = 8.85,
        lat = 60.60,
        repel = T
      ),
      data.table(
        location_code = "county_nor03",
        long = 9.3,
        lat = 60.3,
        repel = F
      ),
      data.table(
        location_code = "county_nor34",
        long = 11.1,
        lat = 61.9,
        repel = F
      ),
      data.table(
        location_code = "county_nor39", # Vestfold
        long = 10,
        lat = 59.32481,
        repel = T
      ),
      data.table(
        location_code = "county_nor40", # Telemark
        long = 8.496352,
        lat = 59.6,
        repel = T
      ),
      data.table(
        location_code = "county_nor42",
        long = 7.9,
        lat = 58.3,
        repel = T
      ),
      data.table(
        location_code = "county_nor11",
        long = 5.9,
        lat = 59,
        repel = T
      ),
      data.table(
        location_code = "county_nor46",
        long = 5.4,
        lat = 61.6,
        repel = F
      ),
      data.table(
        location_code = "county_nor15",
        long = 7.4,
        lat = 62.7,
        repel = F
      ),
      data.table(
        location_code = "county_nor18", # nordland
        long = 14.9,
        lat = 66.8,
        repel = F
      ),
      data.table(
        location_code = "county_nor55", # Troms
        long = 19.244275,
        lat = 68.9,
        repel = F
      ),
      data.table(
        location_code = "county_nor56", # Finnmark
        long = 24.7,
        lat = 69.6,
        repel = F
      ),
      data.table(
        location_code = "county_nor50",
        long = 12.2,
        lat = 64.35,
        repel = F
      )
    ))
    if(split){
      label_positions[location_code %in% c("county_nor56"), c("long", "lat") := .(6.5, 65)]
      label_positions[location_code %in% c("county_nor55"), c("long", "lat") := .(2, 64)]
      label_positions[location_code %in% c("county_nor18"), c("long", "lat") := .(-0.75, 61.8)]

      label_positions[location_code %in% c("county_nor03"), c("long", "lat") := .(2.2, 60.3)]
    }
  }

  # fix oslo insert if desired
  if(insert){
    label_positions[location_code=="county_nor03", long := 20.85]
    label_positions[location_code=="county_nor03", lat := 62]
    label_positions[location_code=="county_nor03", repel := F]
  }


  return(label_positions)
}

# insert for oslo/akershus?
# split the country in 2?
gen_nor_county_map <- function(x_year_end, insert = FALSE, split = FALSE, return_sf=FALSE) {
  stopifnot(x_year_end %in% c("2017", "2019", "2020", "2024"))

  . <- NULL
  id <- NULL
  location_code <- NULL
  long <- NULL
  lat <- NULL
  long_center <- NULL
  lat_center <- NULL
  group <- NULL
  hole <- NULL
  piece <- NULL
  long_diff <- NULL
  lat_diff <- NULL

  if (x_year_end == 2017) {
    spdf <- geojsonio::geojson_read(
      fs::path("data-raw", "files", "Fylker17.geojson"),
      what = "sp"
    )
    spdf_simple <- rgeos::gSimplify(spdf, tol=2000, topologyPreserve = F)
    # pryr::object_size(spdf_simple)
  } else if (x_year_end == 2019) {
    spdf <- geojsonio::geojson_read(
      fs::path("data-raw", "files", "Fylker19.geojson"),
      what = "sp"
    )
    spdf_simple <- rgeos::gSimplify(spdf, tol=2000, topologyPreserve = F)
  } else if (x_year_end == 2020) {
    spdf <- geojsonio::geojson_read(
      fs::path("data-raw", "files", "Fylker20.geojson"),
      what = "sp"
    )
    spdf$navn <- NULL
    spdf_simple <- rgeos::gSimplify(spdf, tol=2000, topologyPreserve = F)
  } else if (x_year_end == 2024) {
    spdf <- geojsonio::geojson_read(
      fs::path("data-raw", "files", "Fylker24.geojson"),
      what = "sp"
    )
    spdf$navn <- NULL
    spdf_simple <- rgeos::gSimplify(spdf, tol=2000, topologyPreserve = F)
    # spdf_simple <- sf::st_simplify(spdf, dTolerance=2000, preserveTopology = F)
  }

  if(return_sf){
    spgeo <- sp::spTransform(spdf_simple, sp::CRS("+proj=longlat +datum=WGS84"))
    x <- sf::st_as_sf(spgeo)
    x$location_code <- sprintf("county_nor%s", formatC(as.numeric(spdf$fylkesnummer), width = 2, flag = "0"))
    return(x)
  }

  spdf_simple$fylkesnummer <- spdf$fylkesnummer
  # spdf_fortified <- broom::tidy(spdf_simple, region = "fylkesnummer")
  spdf_fortified <- ggplot2::fortify(spdf_simple, region="fylkesnummer")
  setDT(spdf_fortified)

  # convert from UTM to latlong
  utm <- spdf_fortified[, c("long", "lat")]
  sputm <- sp::SpatialPoints(utm, proj4string = sp::CRS("+proj=utm +zone=33 +datum=WGS84"))
  spgeo <- sp::spTransform(sputm, sp::CRS("+proj=longlat +datum=WGS84"))
  spgeo <- as.data.table(spgeo)

  spdf_fortified[, long := spgeo$long]
  spdf_fortified[, lat := spgeo$lat]

  spdf_fortified[, location_code := sprintf("county_nor%s", formatC(as.numeric(id), width = 2, flag = "0"))]

  if (insert) {
    extra <- csmaps::nor_municip_map_b2019_default_dt[location_code=="municip_nor0301"]
    extra[, location_code := "county_nor03"]
    extra[, long_center := mean(long), by = .(location_code)]
    extra[, lat_center := mean(lat), by = .(location_code)]
    extra[, long := long + 10 + (long - long_center) * 10]
    extra[, lat := lat + 2 + (lat - lat_center) * 10]
    extra[, long_center := NULL]
    extra[, lat_center := NULL]
    extra[, group := paste0("x", group)]

    spdf_fortified <- rbind(spdf_fortified, extra, fill = T)
  }

  if (split) {
    spdf_fortified[location_code %in% c("county_nor18", "county_nor19", "county_nor20", "county_nor54", "county_nor55", "county_nor56"), long := (long - mean(long)) * 0.60 + mean(long) - 17]
    spdf_fortified[location_code %in% c("county_nor18", "county_nor19", "county_nor20", "county_nor54", "county_nor55", "county_nor56"), lat := (lat - mean(lat)) * 0.70 + mean(lat) - 5.5]

    spdf_fortified[location_code %in% c("county_nor18", "county_nor19", "county_nor20", "county_nor54", "county_nor55", "county_nor56"), long_center := mean(long)]
    spdf_fortified[location_code %in% c("county_nor18", "county_nor19", "county_nor20", "county_nor54", "county_nor55", "county_nor56"), lat_center := mean(lat)]

    spdf_fortified[location_code %in% c("county_nor18", "county_nor19", "county_nor20", "county_nor54", "county_nor55", "county_nor56"), long_diff := long - long_center]
    spdf_fortified[location_code %in% c("county_nor18", "county_nor19", "county_nor20", "county_nor54", "county_nor55", "county_nor56"), lat_diff := lat - lat_center]

    spdf_fortified[location_code %in% c("county_nor18", "county_nor19", "county_nor20", "county_nor54", "county_nor55", "county_nor56"), long_diff := long_diff * cos(-0.05 * pi) + lat_diff * sin(-0.05 * pi)]
    spdf_fortified[location_code %in% c("county_nor18", "county_nor19", "county_nor20", "county_nor54", "county_nor55", "county_nor56"), lat_diff := -1 * long_diff * sin(-0.05 * pi) + lat_diff * cos(-0.05 * pi)]

    spdf_fortified[location_code %in% c("county_nor18", "county_nor19", "county_nor20", "county_nor54", "county_nor55", "county_nor56"), long := long_diff + long_center]
    spdf_fortified[location_code %in% c("county_nor18", "county_nor19", "county_nor20", "county_nor54", "county_nor55", "county_nor56"), lat := lat_diff + lat_center]

    spdf_fortified[, long_center := NULL]
    spdf_fortified[, lat_center := NULL]
    spdf_fortified[, long_diff := NULL]
    spdf_fortified[, lat_diff := NULL]

    # extra <- spdf_fortified[location_code %in% c("county_nor03")]
    extra <- csmaps::nor_municip_map_b2019_default_dt[location_code=="municip_nor0301"]
    extra[, location_code := "county_nor03"]
    extra[, long_center := mean(long), by = .(location_code)]
    extra[, lat_center := mean(lat), by = .(location_code)]
    extra[, long := long - 8.5 + (long - long_center) * 5]
    extra[, lat := lat + 0.2 + (lat - lat_center) * 5]
    #extra[, long := long - 12.5 + (long - long_center) * 5]
    #extra[, lat := lat + 4.4 + (lat - lat_center) * 5]
    extra[, long_center := NULL]
    extra[, lat_center := NULL]
    extra[, group := paste0("x", group)]

    print(extra)
    print(spdf_fortified)
    spdf_fortified <- rbind(spdf_fortified, extra, fill=T)

    spdf_fortified[, long_center := NULL]
    spdf_fortified[, lat_center := NULL]
    spdf_fortified[, long_diff := NULL]
    spdf_fortified[, lat_diff := NULL]
  }

  spdf_fortified[, hole := NULL]
  spdf_fortified[, piece := NULL]
  spdf_fortified[, id := NULL]

  return(invisible(spdf_fortified))
}

# ***************************** #
# map default ----

## 2024 ----
nor_county_map_b2024_default_dt <- gen_nor_county_map(x_year_end=2024)
usethis::use_data(nor_county_map_b2024_default_dt, overwrite = TRUE, version = 3, compress = "xz")
nor_county_map_b2024_default_sf <- gen_nor_county_map(x_year_end=2024, return_sf = T)
usethis::use_data(nor_county_map_b2024_default_sf, overwrite = TRUE, version = 3, compress = "xz")

## 2020 ----
nor_county_map_b2020_default_dt <- gen_nor_county_map(x_year_end=2020)
usethis::use_data(nor_county_map_b2020_default_dt, overwrite = TRUE, version = 3, compress = "xz")
nor_county_map_b2020_default_sf <- gen_nor_county_map(x_year_end=2020, return_sf = T)
usethis::use_data(nor_county_map_b2020_default_sf, overwrite = TRUE, version = 3, compress = "xz")

## 2019 ----
nor_county_map_b2019_default_dt <- gen_nor_county_map(x_year_end=2019)
usethis::use_data(nor_county_map_b2019_default_dt, overwrite = TRUE, version = 3, compress = "xz")
nor_county_map_b2019_default_sf <- gen_nor_county_map(x_year_end=2019, return_sf = TRUE)
usethis::use_data(nor_county_map_b2019_default_sf, overwrite = TRUE, version = 3, compress = "xz")

## 2017 ----
nor_county_map_b2017_default_dt <- gen_nor_county_map(x_year_end=2017)
usethis::use_data(nor_county_map_b2017_default_dt, overwrite = TRUE, version = 3, compress = "xz")
nor_county_map_b2017_default_sf <- gen_nor_county_map(x_year_end=2017, return_sf = T)
usethis::use_data(nor_county_map_b2017_default_sf, overwrite = TRUE, version = 3, compress = "xz")

# ***************************** #
# map insert oslo ----

## 2024 ----
nor_county_map_b2024_insert_oslo_dt <- gen_nor_county_map(x_year_end=2024, insert = T)
usethis::use_data(nor_county_map_b2024_insert_oslo_dt, overwrite = TRUE, version = 3, compress = "xz")

## 2020 ----
nor_county_map_b2020_insert_oslo_dt <- gen_nor_county_map(x_year_end=2020, insert = T)
usethis::use_data(nor_county_map_b2020_insert_oslo_dt, overwrite = TRUE, version = 3, compress = "xz")

## 2019 ----
nor_county_map_b2019_insert_oslo_dt <- gen_nor_county_map(x_year_end=2019, insert = T)
usethis::use_data(nor_county_map_b2019_insert_oslo_dt, overwrite = TRUE, version = 3, compress = "xz")

## 2017 ----
nor_county_map_b2017_insert_oslo_dt <- gen_nor_county_map(x_year_end=2017, insert = T)
usethis::use_data(nor_county_map_b2017_insert_oslo_dt, overwrite = TRUE, version = 3, compress = "xz")

# ***************************** #
# map split ----

## 2024 ----
nor_county_map_b2024_split_dt <- gen_nor_county_map(x_year_end=2024, split=T)
usethis::use_data(nor_county_map_b2024_split_dt, overwrite = TRUE, version = 3, compress = "xz")

## 2020 ----
nor_county_map_b2020_split_dt <- gen_nor_county_map(x_year_end=2020, split=T)
usethis::use_data(nor_county_map_b2020_split_dt, overwrite = TRUE, version = 3, compress = "xz")

# ***************************** #
# labels default ----

## 2024 ----
nor_county_position_geolabels_b2024_default_dt <- gen_nor_county_position_geolabels(x_year_end = 2024)
usethis::use_data(nor_county_position_geolabels_b2024_default_dt, overwrite = TRUE, version = 3, compress = "xz")

## 2020 ----
nor_county_position_geolabels_b2020_default_dt <- gen_nor_county_position_geolabels(x_year_end = 2020)
usethis::use_data(nor_county_position_geolabels_b2020_default_dt, overwrite = TRUE, version = 3, compress = "xz")

## 2019 ----
nor_county_position_geolabels_b2019_default_dt <- gen_nor_county_position_geolabels(x_year_end = 2019)
usethis::use_data(nor_county_position_geolabels_b2019_default_dt, overwrite = TRUE, version = 3, compress = "xz")

## 2017 ----
nor_county_position_geolabels_b2017_default_dt <- gen_nor_county_position_geolabels(x_year_end = 2017)
usethis::use_data(nor_county_position_geolabels_b2017_default_dt, overwrite = TRUE, version = 3, compress = "xz")

# ***************************** #
# labels insert oslo ----

## 2024 ----
nor_county_position_geolabels_b2024_insert_oslo_dt <- gen_nor_county_position_geolabels(x_year_end = 2024, insert = T)
usethis::use_data(nor_county_position_geolabels_b2024_insert_oslo_dt, overwrite = TRUE, version = 3, compress = "xz")

## 2020 ----
nor_county_position_geolabels_b2020_insert_oslo_dt <- gen_nor_county_position_geolabels(x_year_end = 2020, insert = T)
usethis::use_data(nor_county_position_geolabels_b2020_insert_oslo_dt, overwrite = TRUE, version = 3, compress = "xz")

## 2019 ----
nor_county_position_geolabels_b2019_insert_oslo_dt <- gen_nor_county_position_geolabels(x_year_end = 2019, insert = T)
usethis::use_data(nor_county_position_geolabels_b2019_insert_oslo_dt, overwrite = TRUE, version = 3, compress = "xz")

## 2017 ----
nor_county_position_geolabels_b2017_insert_oslo_dt <- gen_nor_county_position_geolabels(x_year_end = 2017, insert = T)
usethis::use_data(nor_county_position_geolabels_b2017_insert_oslo_dt, overwrite = TRUE, version = 3, compress = "xz")

# ***************************** #
# labels split ----

## 2024 ----
nor_county_position_geolabels_b2024_split_dt <- gen_nor_county_position_geolabels(x_year_end = 2024, split = T)
usethis::use_data(nor_county_position_geolabels_b2024_split_dt, overwrite = TRUE, version = 3, compress = "xz")

## 2020 ----
nor_county_position_geolabels_b2020_split_dt <- gen_nor_county_position_geolabels(x_year_end = 2020, split = T)
usethis::use_data(nor_county_position_geolabels_b2020_split_dt, overwrite = TRUE, version = 3, compress = "xz")



