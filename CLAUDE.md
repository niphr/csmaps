# CLAUDE.md

This file provides guidance to Claude Code (claude.ai/code) when working with code in this repository.

## Package Overview

csmaps is an R package that provides preformatted maps of Norway at county, municipality, and ward (Oslo only) levels for multiple redistricting periods (2017, 2019, 2020, 2024). The package enables rapid creation of choropleth maps without requiring geolibraries.

## Core Architecture

### Data Generation Pipeline
The package follows a systematic data processing workflow:

1. **Source data processing** (`data-raw/` scripts): Raw geographic data is processed from Geonorge and other sources
2. **Data transformation**: Geographic boundaries are converted to data.table and sf formats
3. **Multiple layouts**: Each dataset is provided in different layouts:
   - `default`: Standard Norway outline
   - `split`: Separated regions for better visibility
   - `insert_oslo`: Special layout with Oslo ward inset

### Map Data Structure
All map datasets follow consistent naming conventions:
- `nor_county_map_bYYYY_LAYOUT_FORMAT` (counties)
- `nor_municip_map_bYYYY_LAYOUT_FORMAT` (municipalities) 
- `oslo_ward_map_bYYYY_LAYOUT_FORMAT` (Oslo wards)
- `nor_xxx_position_title_insert_oslo_bYYYY_insert_oslo_dt` (positioning data)

Where:
- `YYYY` = redistricting year (2017, 2019, 2020, 2024)
- `LAYOUT` = default, split, or insert_oslo
- `FORMAT` = dt (data.table) or sf (simple features)

### Data Processing Functions
Key generation functions in `data-raw/`:
- `gen_nor_county_position_geolabels()`: Creates label positioning data
- Geographic boundary processing for each administrative level
- Coordinate transformations and layout adjustments

## Development Commands

```r
# Load package during development
devtools::load_all(".")

# Generate documentation
devtools::document()

# Basic package check
devtools::check()

# CRAN compliance check (required)
R CMD check . --as-cran

# Build and install
devtools::build()
devtools::install()
```

## Testing Structure

Basic test framework in `tests/testthat/`. Current tests are minimal placeholders that should be expanded to validate:
- Map data integrity across different years
- Coordinate accuracy and completeness
- Proper data.table and sf format structures

## Data File Management

Large geographic datasets stored in `data/` use `.rda` format with `xz` compression. Files in `data-raw/files/` contain source geographic data in various formats (GeoJSON, Shapefile).

## Package Documentation

Uses pkgdown for website generation with the cstemplate template. Documentation includes:
- Function reference with runnable examples
- Vignettes demonstrating map usage and customization
- Interactive map examples using leaflet

## Key Dependencies

- `data.table`: Core data manipulation
- `ggplot2`: Map visualization
- `sf`: Spatial data handling (suggested)
- `leaflet`: Interactive maps (suggested)

## Version Management

Update version in DESCRIPTION using YY.M.D format (remove leading zeroes) and maintain NEWS.md changelog for each release.