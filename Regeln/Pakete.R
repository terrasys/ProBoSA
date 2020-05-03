#######################################################################################################
#packages
#######################################################################################################
loadandinstall <- function(mypkg) {if (!is.element(mypkg,
                                                   installed.packages()[,1])){install.packages(mypkg)};
library(mypkg, character.only=TRUE)  }
pk <- c("raster",
        "rgdal",
        "maptools",
        "raster",
        "sp",
        "caret",
        "Rarity",
        "fpc",
        "corrplot",
        "plyr",
        "gtools",
        "doParallel",
        "parallel",
        "snow",
        "shapefiles",
        "foreign",
        "nnet",
        "utils")
for(i in pk){loadandinstall(i)}
