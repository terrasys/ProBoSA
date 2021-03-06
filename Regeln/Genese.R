#-----------------------------------------------------------------------------------------------------
print("KA5-Geneseklassifikation")
#-----------------------------------------------------------------------------------------------------
#Referenzeinheiten
r <- ru
setwd(file.path(W.DIR,VECTOR.DIR))
#Sortierte Liste nach Zahlen und Alphabet
S.L <- mixedsort(list.files(pattern="[0-9]{1,2}\\.dbf$"))
#Klassifikationsschleife
pb <- txtProgressBar(min=0, max=length(S.L), style=3)
for(L in 1:length(S.L)){
  #Schichtweise Geneseklassifikation
  setwd((file.path(W.DIR,RULE.DIR)))
  source("Genese1.R")
  #Kopplung von Referenzeinheiten mit dem dominierenden Klassifikationsergebnis und den korrespondierenden Qualitätsmaßen 
  r@data[[paste('CLASS_',L,sep="")]] <-  s$CLASS
  r@data[[paste('MS1_',L,sep="")]] <-  s$CLASS_MS1
  r@data[[paste('STB_',L,sep="")]] <-  s$CLASS_STB
  r@data[[paste('SRC_',L,sep="")]] <-  s$SOURCE
  rm(s)
  setTxtProgressBar(pb, L)
  }
#-----------------------------------------------------------------------------------------------------
print("Zusammenfassung der Geneseklassen-Schichten zu einer Zeichenfolge")
#-----------------------------------------------------------------------------------------------------
setwd((file.path(W.DIR,RULE.DIR)))
source("Genese2.R")
