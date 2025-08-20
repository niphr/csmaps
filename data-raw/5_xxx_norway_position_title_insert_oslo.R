library(data.table)

gen_nor_xxx_position_title_insert_oslo <- function(x_year_end) {
  stopifnot(x_year_end %in% c("2017", "2019", "2020", "2024"))

  label_positions <- data.table(
    long = c(
      19.75
    ),
    lat = c(
      64.5
    )
  )

  return(label_positions)
}

# 2024 insert label
nor_xxx_position_title_insert_oslo_b2024_insert_oslo_dt <- gen_nor_xxx_position_title_insert_oslo(x_year_end = 2024)
usethis::use_data(nor_xxx_position_title_insert_oslo_b2024_insert_oslo_dt, overwrite = TRUE, version = 3, compress = "xz")

# 2020 insert label
nor_xxx_position_title_insert_oslo_b2020_insert_oslo_dt <- gen_nor_xxx_position_title_insert_oslo(x_year_end = 2020)
usethis::use_data(nor_xxx_position_title_insert_oslo_b2020_insert_oslo_dt, overwrite = TRUE, version = 3, compress = "xz")

# 2019 insert label
nor_xxx_position_title_insert_oslo_b2019_insert_oslo_dt <- gen_nor_xxx_position_title_insert_oslo(x_year_end = 2019)
usethis::use_data(nor_xxx_position_title_insert_oslo_b2019_insert_oslo_dt, overwrite = TRUE, version = 3, compress = "xz")

# 2017 insert label
nor_xxx_position_title_insert_oslo_b2017_insert_oslo_dt <- gen_nor_xxx_position_title_insert_oslo(x_year_end = 2017)
usethis::use_data(nor_xxx_position_title_insert_oslo_b2017_insert_oslo_dt, overwrite = TRUE, version = 3, compress = "xz")
