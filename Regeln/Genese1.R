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
setwd((file.path(W.DIR,RULE.DIR)))
#application of weighting rules
gen.lt <- list.files(pattern="(GEN_).*\\.R$")
gen.lt
for(j in gen.lt) {
  tryCatch({source(j)},error=function(e){})
}
head(s)
#------------------------------------------------------------------------------------------------------
#Auswahl aller klassifizierten Spalten
#------------------------------------------------------------------------------------------------------
m <- s[grepl(paste("*_gen_*",sep=""), names(s))]
head(m)
m.v <- names(m[grepl(paste("v_gen_*",sep=""), names(m))])
m.gk <- names(m[grepl(paste("gk_gen_*",sep=""), names(m))])
m.f <- names(m[grepl(paste("f_gen_*",sep=""), names(m))])
v.G <-   unique(c(substr(m.f,7,nchar(m.f)),substr(m.v,7,nchar(m.v)),substr(m.gk,8,nchar(m.gk))))
v.G
#------------------------------------------------------------------------------------------------------
#Subschleife für Klassenqaggregieruung
#------------------------------------------------------------------------------------------------------
for(k in v.G){
  m <- s[grepl(paste("_gen_",k,"$",sep=""), names(s))]
  head(m)
  m[is.na(m)] <- 0
  head(m)
  s[[paste("CL_",k,sep="")]] <- apply(m, 1, max)
  m[m>0]<- 1
  s[[paste("N_",k,sep="")]] <- apply(m, 1, sum)
}
head(s)
#------------------------------------------------------------------------------------------------------
#Detektion der besten Klassifikation
#------------------------------------------------------------------------------------------------------
m <- s[grepl("CL_", names(s))]
s$CLASS <- v.G[apply(m, 1, which.is.max)]
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
#Klassifikationsstabilität
s$CLASS_STB <- s$CLASS_MS1-s$CLASS_MS2
#Quelle
s$ID <- 1:nrow(s)
s <- merge(s,w.df,by=c("CLASS_MS1"),all.x=TRUE,sort=FALSE)
s <- s[order(s$ID), ]
#------------------------------------------------------------------------------------------------------
#Export
#------------------------------------------------------------------------------------------------------
setwd(file.path(W.DIR,RESULT.DIR))
write.table(s, file = paste(substr(S.L[L],1,nchar(S.L[L])-4),"_GEN",sep="",".csv"), 
            append = FALSE, 
            quote = FALSE, 
            sep = ";",
            dec = ",", 
            row.names = FALSE,
            col.names = TRUE)
