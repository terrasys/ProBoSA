print("Klassifikation von Zielkategorien" ) 
#-----------------------------------------------------------------------------------------------------
#-----------------------------------------------------------------------------------------------------
#-----------------------------------------------------------------------------------------------------
#-----------------------------------------------------------------------------------------------------
print("Working directory, data and settings")
#-----------------------------------------------------------------------------------------------------
#working directory
W.DIR <- "..."
#rule directory
RULE.DIR <- "_rules/"
#directory with layer-specific shapes containing transformation results
VECTOR.DIR <- "_data/"
#result directory
RESULT.DIR <- "_result/"
RU <- "bezugseinheiten_basic.shp"
#EPSG code of shape files
EPSG <- 31468
#-----------------------------------------------------------------------------------------------------
print("Pakete und Wichtungen")
#-----------------------------------------------------------------------------------------------------
source(file.path(W.DIR,RULE.DIR,"Pakete.R"))
source(file.path(W.DIR,RULE.DIR,"Wichtungen.R"))
#-----------------------------------------------------------------------------------------------------
print("Klassifikationen")
#-----------------------------------------------------------------------------------------------------
print("Import der Bezugeinheiten")
ru <- shapefile(file.path(W.DIR,VECTOR.DIR,RU))
ru@data$ID <- 1:nrow(ru@data)
proj4string(ru) <- CRS(paste("+init=epsg:",EPSG,sep=""))  
#-----------------------------------------------------------------------------------------------------
source(file.path(W.DIR,RULE.DIR,"Bodenartengruppen.R"))
source(file.path(W.DIR,RULE.DIR,"Bodenartenhauptgruppen.R"))
source(file.path(W.DIR,RULE.DIR,"Genese.R"))
source(file.path(W.DIR,RULE.DIR,"Carbonat.R"))
source(file.path(W.DIR,RULE.DIR,"Skelett.R"))
source(file.path(W.DIR,RULE.DIR,"Zusammenfuehrung_Typen.R"))
