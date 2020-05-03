#------------------------------------------------------------------------------------------------------
#Schichtimport
#------------------------------------------------------------------------------------------------------
setwd(file.path(W.DIR,VECTOR.DIR))
s <- read.dbf(S.L[L])$dbf#polygon data set
#change column names to lowercase
names(s) <- tolower(names(s))
#------------------------------------------------------------------------------------------------------
#Alle Daten werden zu numerisch definiert
#------------------------------------------------------------------------------------------------------
for(i in 1:length(s)){
  s[[c(i)]] <- as.numeric(s[[c(i)]])
}
#------------------------------------------------------------------------------------------------------
#Subklassifikationsschleife
#------------------------------------------------------------------------------------------------------
setwd((paste(W.DIR,RULE.DIR,"BAG/",sep=")))
#classification
bag.lt <- list.files(pattern="(BAG_).*\\.R$")
#------------------------------------------------------------------------------------------------------
#Schicht-spezifische Auswahl von Datenquellen
#------------------------------------------------------------------------------------------------------
toMatch <- c("*_bs.R","*_v.R","*_f.R","*_m.R")
if(L>10){
  bag.lt
} else {
  bag.lt <- bag.lt[grepl(paste(toMatch,collapse="|"), bag.lt)]
}
for(j in bag.lt) {
  tryCatch({source(j)},error=function(e){})
}
#------------------------------------------------------------------------------------------------------
#Subschleife für Klassenaggregieruung
#------------------------------------------------------------------------------------------------------
if(L>10){
v.BAG <- c("ss","ls","us","sl","ll","tl","su","lu","tu","ut","lt","ste","kip","hne")
} else {
v.BAG <- c("ss","ls","us","sl","ll","tl","su","lu","tu","ut","lt")  
}

for(k in v.BAG){
  m <- s[grepl(paste("BAG_",k,sep=""), names(s))]
  m[is.na(m)] <- 0
  head(m)
  s[[paste("CL_",k,sep="")]] <- apply(m, 1, max)
  m[m>0]<- 1
  s[[paste("N_",k,sep="")]] <- apply(m, 1, sum)
}
#------------------------------------------------------------------------------------------------------
#Detektion der besten Klassifikation
#------------------------------------------------------------------------------------------------------
m <- s[grepl("CL_", names(s))]
s$CLASS <- v.BAG[apply(m, 1, which.is.max)]
#------------------------------------------------------------------------------------------------------
#Berechnung der Qualitätsmaße
#------------------------------------------------------------------------------------------------------
#Klassifikationsstärke (beste und zweitbeste Klasse)
s$CLASS_MS1 <- apply(m, 1, max)
s$CLASS_MS2 <- apply(m, 1, function(row) sort(unique(row), decreasing = TRUE)[2])    
s$CLASS_SUM <- apply(m, 1, sum)
#Anzahl alternativer Klassifikationen
m.n <- m
m.n[m.n>0]<-1
s$CLASS_N <- apply(m.n, 1, sum)
#MS2-Wertkorrektur
s$CLASS_MS2 <- ifelse(s$CLASS_N==2 & s$CLASS_MS2==0,
                           s$CLASS_MS1,
                           s$CLASS_MS2)
s$CLASS_MS2 <- ifelse(s$CLASS_N>1 & s$CLASS_MS2==0 & s$CLASS_SUM/s$CLASS_N==s$CLASS_MS1,
                           s$CLASS_MS1,
                           s$CLASS_MS2)
s$CLASS_MS2 <- ifelse(s$CLASS_N==3 &  s$CLASS_MS2==0,
                           apply(m, 1, function(row) sort(unique(row), decreasing = TRUE)[2]),
                           s$CLASS_MS2)
s$CLASS_MS2 <- ifelse(s$CLASS_N==4 & s$CLASS_MS2==0,
                           apply(m, 1, function(row) sort(unique(row), decreasing = TRUE)[2]),
                           s$CLASS_MS2)
#CLASSIFICATION STABILITY: difference between maximal membership and mean membership
s$CLASS_STB <- s$CLASS_MS1-s$CLASS_MS2
#SOURCE
s$ID <- 1:nrow(s)
s <- merge(s,w.df,by=c("CLASS_MS1"),all.x=TRUE,sort=FALSE)
s <- s[order(s$ID), ]
#------------------------------------------------------------------------------------------------------
#Export
#------------------------------------------------------------------------------------------------------
setwd(file.path(W.DIR,RESULT.DIR))
write.table(s, file = paste(substr(S.L[L],1,nchar(S.L[L])-4),"_BAG",sep="",".csv"), 
            append = FALSE, 
            quote = FALSE, 
            sep = ";",
            dec = ",", 
            row.names = FALSE,
            col.names = TRUE)

#subset(s,s$ID==141173)
#head(s[grepl(paste("koe",sep=""), names(s))],20)
#head(s[grepl(paste("BAG_","lu",sep=""), names(s))],10)
