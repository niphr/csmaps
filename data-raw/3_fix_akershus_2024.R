# only run this file ONCE, NEVER AGAIN
# Akershus got 2 more municipalities

# ***************************** #
# map default ----
load("data/nor_county_map_b2024_default_dt.rda")
load("data/nor_municip_map_b2024_default_dt.rda")

z_before <- nor_county_map_b2024_default_dt[location_code=="county_nor32" & group=="32.1" & order < 1656]
z_after <- nor_county_map_b2024_default_dt[location_code=="county_nor32" & group=="32.1" & order > 1658]
z_middle1 <- nor_municip_map_b2024_default_dt[location_code=="municip_nor3234"]
z_middle2 <- nor_municip_map_b2024_default_dt[location_code=="municip_nor3236"]
z_middle <- rbind(
  z_middle1[order > 11385 & order <= 11388],
  z_middle2[order > 11354],
  z_middle2[order < 11347],
  z_middle1[order < 11381 & order >= 11377]
)
pd <- rbind(z_before, z_middle, z_after)
pd[, group := "32.1"]
pd[, location_code := "county_nor32"]

q <- ggplot()
q <- q + geom_polygon(
  data = pd,
  aes(
    x = long,
    y = lat,
    group = group
  ),
  color="black",
  fill="white",
  linewidth = 0.4
)
q

pdz <- rbind(
  nor_county_map_b2024_default_dt[group!="32.1"],
  pd
)

q <- ggplot()
q <- q + geom_polygon(
  data = pdz,
  aes(
    x = long,
    y = lat,
    group = group
  ),
  color="black",
  fill="white",
  linewidth = 0.4
)
q

nor_county_map_b2024_default_dt <- pdz
usethis::use_data(nor_county_map_b2024_default_dt, overwrite = TRUE, version = 3, compress = "xz")


# ***************************** #
# map insert oslo ----
load("data/nor_county_map_b2024_insert_oslo_dt.rda")
load("data/nor_municip_map_b2024_default_dt.rda")

z_before <- nor_county_map_b2024_insert_oslo_dt[location_code=="county_nor32" & group=="32.1" & order < 1656]
z_after <- nor_county_map_b2024_insert_oslo_dt[location_code=="county_nor32" & group=="32.1" & order > 1658]
z_middle1 <- nor_municip_map_b2024_default_dt[location_code=="municip_nor3234"]
z_middle2 <- nor_municip_map_b2024_default_dt[location_code=="municip_nor3236"]
z_middle <- rbind(
  z_middle1[order > 11385 & order <= 11388],
  z_middle2[order > 11354],
  z_middle2[order < 11347],
  z_middle1[order < 11381 & order >= 11377]
)
pd <- rbind(z_before, z_middle, z_after)
pd[, group := "32.1"]
pd[, location_code := "county_nor32"]

q <- ggplot()
q <- q + geom_polygon(
  data = pd,
  aes(
    x = long,
    y = lat,
    group = group
  ),
  color="black",
  fill="white",
  linewidth = 0.4
)
q

pdz <- rbind(
  nor_county_map_b2024_insert_oslo_dt[group!="32.1"],
  pd
)

q <- ggplot()
q <- q + geom_polygon(
  data = pdz,
  aes(
    x = long,
    y = lat,
    group = group
  ),
  color="black",
  fill="white",
  linewidth = 0.4
)
q

nor_county_map_b2024_insert_oslo_dt <- pdz
usethis::use_data(nor_county_map_b2024_insert_oslo_dt, overwrite = TRUE, version = 3, compress = "xz")

# map split ----
load("data/nor_county_map_b2024_split_dt.rda")
load("data/nor_municip_map_b2024_default_dt.rda")

z_before <- nor_county_map_b2024_split_dt[location_code=="county_nor32" & group=="32.1" & order < 1656]
z_after <- nor_county_map_b2024_split_dt[location_code=="county_nor32" & group=="32.1" & order > 1658]
z_middle1 <- nor_municip_map_b2024_default_dt[location_code=="municip_nor3234"]
z_middle2 <- nor_municip_map_b2024_default_dt[location_code=="municip_nor3236"]
z_middle <- rbind(
  z_middle1[order > 11385 & order <= 11388],
  z_middle2[order > 11354],
  z_middle2[order < 11347],
  z_middle1[order < 11381 & order >= 11377]
)
pd <- rbind(z_before, z_middle, z_after)
pd[, group := "32.1"]
pd[, location_code := "county_nor32"]

q <- ggplot()
q <- q + geom_polygon(
  data = pd,
  aes(
    x = long,
    y = lat,
    group = group
  ),
  color="black",
  fill="white",
  linewidth = 0.4
)
q

pdz <- rbind(
  nor_county_map_b2024_split_dt[group!="32.1"],
  pd
)

q <- ggplot()
q <- q + geom_polygon(
  data = pdz,
  aes(
    x = long,
    y = lat,
    group = group
  ),
  color="black",
  fill="white",
  linewidth = 0.4
)
q

nor_county_map_b2024_split_dt <- pdz
usethis::use_data(nor_county_map_b2024_split_dt, overwrite = TRUE, version = 3, compress = "xz")
