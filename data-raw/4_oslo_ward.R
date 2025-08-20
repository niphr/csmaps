library(data.table)

gen_oslo_ward_map <- function(return_sf=FALSE) {

  . <- NULL
  id <- NULL
  location_code <- NULL
  long <- NULL
  lat <- NULL
  group <- NULL
  hole <- NULL
  piece <- NULL


  d <- sf::read_sf(
    fs::path("data-raw", "files", "Bydel_Oslo", "Bydeler.shp")
  )

  # drop Z dimension, make into sp
  d <- sf::st_zm(d)
  spdf <- methods::as(d, "Spatial")

  # simplify
  spdf$BYDELSNAVN <- NULL
  spdf_simple <- rgeos::gSimplify(spdf, tol=20, topologyPreserve = F)


  if(return_sf){
    spgeo <- sp::spTransform(spdf_simple, sp::CRS("+proj=longlat +datum=WGS84"))
    x <- sf::st_as_sf(spgeo)
    x$location_code <- sprintf("wardoslo_nor0301%s", formatC(as.numeric(spdf$BYDEL), width = 2, flag = "0"))

    # remove marka (16,17 record)
    x <- x[1:15, ]
    return(x)
  }

  spdf_simple$ward <- spdf$BYDEL
  spdf_fortified <- broom::tidy(spdf_simple, region = "ward")
  setDT(spdf_fortified)

  # convert from UTM to latlong
  # the zone need to refer to spdf@proj4string
  utm <- spdf_fortified[, c("long", "lat")]
  sputm <- sp::SpatialPoints(utm, proj4string = sp::CRS("+proj=utm +zone=32 +datum=WGS84"))
  spgeo <- sp::spTransform(sputm, sp::CRS("+proj=longlat +datum=WGS84"))
  spgeo <- as.data.table(spgeo)

  spdf_fortified[, long := spgeo$long]
  spdf_fortified[, lat := spgeo$lat]

  # align with the standard location_code
  spdf_fortified[, location_code := sprintf("wardoslo_nor0301%s", formatC(as.numeric(id), width = 2, flag = "0"))]

  # remove Marka, since it's not oslo
  spdf_fortified <- spdf_fortified[location_code != 'wardoslo_nor030117']

  # remove unneeded
  spdf_fortified[, hole := NULL]
  spdf_fortified[, piece := NULL]
  spdf_fortified[, id := NULL]

  return(invisible(spdf_fortified))
}


gen_oslo_ward_position_geolabels <- function(x_year_end) {

  # d_oslo <- csmaps::oslo_ward_map_b2020_default_dt
  # d_oslo[, mean_long := mean(long), by = location_code]
  # d_oslo[, mean_lat := mean(lat), by = location_code]
  # d_oslo_label <- d_oslo[, .(location_code, mean_long, mean_lat)] %>% unique

  stopifnot(x_year_end %in% c(2020, 2024))

  label_positions <- rbindlist(list(
    data.table(
      location_code = "wardoslo_nor030101", # gamle oslo
      long = 10.72,
      lat = 59.89
    ),
    data.table(
      location_code = "wardoslo_nor030102",
      long = 10.78,
      lat = 59.92567
    ),
    data.table(
      location_code = "wardoslo_nor030103",
      long = 10.76683,
      lat = 59.93981
    ),
    data.table(
      location_code = "wardoslo_nor030104",
      long = 10.73555,
      lat = 59.91230
    ),
    data.table(
      location_code = "wardoslo_nor030105", # frogner
      long = 10.665,
      lat = 59.89925
    ),
    data.table(
      location_code = "wardoslo_nor030106",
      long = 10.650,
      lat = 59.925
    ),
    data.table(
      location_code = "wardoslo_nor030107",
      long = 10.66882,
      lat = 59.95663
    ),
    data.table(
      location_code = "wardoslo_nor030108",
      long = 10.75822,
      lat = 59.95677
    ),
    data.table(
      location_code = "wardoslo_nor030109",
      long = 10.82981,
      lat = 59.94436
    ),
    data.table(
      location_code = "wardoslo_nor030110",
      long = 10.88254,
      lat = 59.96523
    ),
    data.table(
      location_code = "wardoslo_nor030111",
      long = 10.93,
      lat = 59.955
    ),
    data.table(
      location_code = "wardoslo_nor030112",
      long = 10.87209,
      lat = 59.92964
    ),
    data.table(
      location_code = "wardoslo_nor030113",
      long = 10.84233,
      lat = 59.89
    ),
    data.table(
      location_code = "wardoslo_nor030114",
      long = 10.77650,
      lat = 59.870
    ),
    data.table(
      location_code = "wardoslo_nor030115",
      long = 10.81,
      lat = 59.83
    )
  ))

  return(label_positions)
}

# ***************************** #
# map default ----

## 2024 ----
oslo_ward_map_b2024_default_dt <- gen_oslo_ward_map()
usethis::use_data(oslo_ward_map_b2024_default_dt, overwrite = TRUE, version = 3, compress = "xz")
oslo_ward_map_b2024_default_sf <- gen_oslo_ward_map(return_sf = T)
usethis::use_data(oslo_ward_map_b2024_default_sf, overwrite = TRUE, version = 3, compress = "xz")

## 2020 ----
oslo_ward_map_b2020_default_dt <- gen_oslo_ward_map()
usethis::use_data(oslo_ward_map_b2020_default_dt, overwrite = TRUE, version = 3, compress = "xz")
oslo_ward_map_b2020_default_sf <- gen_oslo_ward_map(return_sf = T)
usethis::use_data(oslo_ward_map_b2020_default_sf, overwrite = TRUE, version = 3, compress = "xz")

# ***************************** #
# labels default ----

## 2020 ----
oslo_ward_position_geolabels_b2024_default_dt <- gen_oslo_ward_position_geolabels(x_year_end = 2024)
usethis::use_data(oslo_ward_position_geolabels_b2024_default_dt, overwrite = TRUE, version = 3, compress = "xz")

## 2020 ----
oslo_ward_position_geolabels_b2020_default_dt <- gen_oslo_ward_position_geolabels(x_year_end = 2020)
usethis::use_data(oslo_ward_position_geolabels_b2020_default_dt, overwrite = TRUE, version = 3, compress = "xz")


