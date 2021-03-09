## Required packages
pkgs_req <- c("sp", "sf", "rgdal", "rgeos", "tmap", "tmaptools", "leaflet", 
              "ggmap", "maptools", "RColorBrewer", "raster", "maps", "zipcode", 
              "tidyverse",  "jsonlite", "rasterVis", "GISTools", "adehabitatHR", 
              "nngeo", "lwgeom", "devtools", "RStoolbox", "conflicted", "tigris", 
              "tidycensus", "stars")

pkgs_missing <- pkgs_req[!(pkgs_req %in% installed.packages()[,"Package"])]

if (length(pkgs_missing)) install.packages(pkgs_missing, dependencies=TRUE)


## See which ones are missing
(pkgs_missing <- pkgs_req[!(pkgs_req %in% installed.packages()[,"Package"])])

## Install missing ones
if (length(pkgs_missing)) install.packages(pkgs_missing, dependencies=TRUE)

## Re-run the check for missing packages
pkgs_missing <- pkgs_req[!(pkgs_req %in% installed.packages()[,"Package"])]
if (length(pkgs_missing)==0) cat("ALL PACKAGES WERE INSTALLED SUCCESSFULLY \n")


