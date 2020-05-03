#######################################################################################################
#######################################################################################################
#######################################################################################################
print("Zusammenfassung der schichtweisen Bodenartenhauptgruppenkategorien zu einer Zeichenfolge")
#######################################################################################################
#######################################################################################################
#######################################################################################################

#######################################################################################################
#detection of objects with MS1=0
#######################################################################################################
#list with layer-specific classes
l.c <- names(r@data[grepl("CLASS_", names(r@data))])
for(k in 1:length(l.c)){
  if(r@data[paste("MS1_",k,sep="")]==0){r@data[which(r@data[paste("MS1_",k,sep="")]==0),][paste("CLASS_",k,sep="")] <-  "??"}
}
#######################################################################################################
#plot class proportions for each layer
#######################################################################################################
#plot
#setwd(file.path(W.DIR,RESULT.DIR))
#  setwd(file.path(W.DIR,RESULT.DIR))
#  pdf(paste(substr(RU,1,nchar(RU)-4),"_BAHG_Flaechenanteile",sep="",".pdf"), height=5,width=5)
#  for(groupColumns in l.c){
#    #area bar plot for all crop types
#    agg <-aggregate(r@data$HECTARES, by=list(r@data[[c(c(match(paste(groupColumns),names(r@data))))]]),FUN=sum, na.rm=TRUE)
#    head(agg)
#    sum.agg <- sum(agg[[2]])
#    setwd(file.path(W.DIR,RESULT.DIR))
#    sum <- tapply(agg[[2]]/1000,agg[[1]],sum)
#    xx <- barplot(sum,
#                  ylab="Fläche [x 1000 ha]",
#                  sub=paste('Gesamtfläche =',round(sum.agg,1),"ha"),
#                  xlab=paste("Bodenartengruppe | ",groupColumns),
#                  las=2,
#                  ylim=c(0,100))
#    text(x = xx, y = sum, label = round(sum,1), pos = 3, cex = 0.8, col = "red")
#  }
#  dev.off()
#######################################################################################################
#texture structuring
#######################################################################################################
#identify layer changes
c <- r@data[grepl("CLASS_", names(r@data))]
head(c)
v.l <- length(c)-1
for(i in 1:v.l){
  c[[paste('W',i,sep="")]] <- ifelse(c[[paste("CLASS_",i,sep="")]]==c[[paste("CLASS_",i+1,sep="")]],NA,paste("(",i+1,")",sep=""))
}
#identify changing texture names 
for(i in 1:v.l){
  c[[paste('L',i,sep="")]] <- ifelse(c[[paste("CLASS_",i,sep="")]]==c[[paste("CLASS_",i+1,sep="")]],NA,as.character(c[[paste("CLASS_",i+1,sep="")]]))
}
#combining layer changes and changing texture names 
r@data$BAHG  <- paste(c$CLASS_1,
                    c$W1,c$L1,
                    c$W2,c$L2,
                    c$W3,c$L3,
                    c$W4,c$L4,
                    c$W5,c$L5,
                    c$W6,c$L6,
                    c$W7,c$L7,
                    c$W8,c$L8,
                    c$W9,c$L9,
                    c$W10,c$L10,
                    c$W11,c$L11,
                    c$W12,c$L12,
                    c$W13,c$L13,
                    c$W14,c$L14,
                    c$W15,c$L15,
                    c$W16,c$L16,
                    c$W17,c$L17,
                    c$W18,c$L18,
                    c$W19,c$L19,
                    sep="")
#eliminating no changes
r@data$BAHG <- gsub("NA", "", r@data$BAHG)
head(r@data$BAHG,100)
#######################################################################################################
#associate quality metrics: STB
#######################################################################################################
#identify layer changes
c <- r@data[grepl("STB_", names(r@data))]
head(c)
v.l <- length(c)-1
for(i in 1:v.l){
  c[[paste('W',i,sep="")]] <- ifelse(c[[paste("STB_",i,sep="")]]==c[[paste("STB_",i+1,sep="")]],NA,paste("(",i+1,")",sep=""))
}
#identify changing texture names 
for(i in 1:v.l){
  c[[paste('L',i,sep="")]] <- ifelse(c[[paste("STB_",i,sep="")]]==c[[paste("STB_",i+1,sep="")]],NA,c[[paste("STB_",i+1,sep="")]])
}
#combining layer changes and changing STB names 
r@data$BAHG_STB  <- paste(c$STB_1,
                        c$W1,c$L1,
                        c$W2,c$L2,
                        c$W3,c$L3,
                        c$W4,c$L4,
                        c$W5,c$L5,
                        c$W6,c$L6,
                        c$W7,c$L7,
                        c$W8,c$L8,
                        c$W9,c$L9,
                        c$W10,c$L10,
                        c$W11,c$L11,
                        c$W12,c$L12,
                        c$W13,c$L13,
                        c$W14,c$L14,
                        c$W15,c$L15,
                        c$W16,c$L16,
                        c$W17,c$L17,
                        c$W18,c$L18,
                        c$W19,c$L19,
                        sep="")
#eliminating no changes
r@data$BAHG_STB <- gsub("NA", "", r@data$BAHG_STB)
head(r@data$BAHG_STB,100)
#######################################################################################################
#associate quality metrics: MS1
#######################################################################################################
#identify layer changes
c <- r@data[grepl("MS1_", names(r@data))]
head(c,100)
v.l <- length(c)-1
for(i in 1:v.l){
  c[[paste('W',i,sep="")]] <- ifelse(c[[paste("MS1_",i,sep="")]]==c[[paste("MS1_",i+1,sep="")]],NA,paste("(",i+1,")",sep=""))
}
#identify changing texture names 
for(i in 1:v.l){
  c[[paste('L',i,sep="")]] <- ifelse(c[[paste("MS1_",i,sep="")]]==c[[paste("MS1_",i+1,sep="")]],NA,c[[paste("MS1_",i+1,sep="")]])
}
#combining layer changes and changing MS1 names 
r@data$BAHG_MS1  <- paste(c$MS1_1,
                        c$W1,c$L1,
                        c$W2,c$L2,
                        c$W3,c$L3,
                        c$W4,c$L4,
                        c$W5,c$L5,
                        c$W6,c$L6,
                        c$W7,c$L7,
                        c$W8,c$L8,
                        c$W9,c$L9,
                        c$W10,c$L10,
                        c$W11,c$L11,
                        c$W12,c$L12,
                        c$W13,c$L13,
                        c$W14,c$L14,
                        c$W15,c$L15,
                        c$W16,c$L16,
                        c$W17,c$L17,
                        c$W18,c$L18,
                        c$W19,c$L19,
                        sep="")
#eliminating no changes
r@data$BAHG_MS1 <- gsub("NA", "", r@data$BAHG_MS1)
#######################################################################################################
#associate dominating sources
#######################################################################################################
#identify layer changes
c <- r@data[grepl("SRC_", names(r@data))]
head(c)
v.l <- length(c)-1
for(i in 1:v.l){
  c[[paste('W',i,sep="")]] <- ifelse(c[[paste("SRC_",i,sep="")]]==c[[paste("SRC_",i+1,sep="")]],NA,paste("(",i+1,")",sep=""))
}
#identify changing src names 
for(i in 1:v.l){
  c[[paste('L',i,sep="")]] <- ifelse(c[[paste("SRC_",i,sep="")]]==c[[paste("SRC_",i+1,sep="")]],NA,as.character(c[[paste("SRC_",i+1,sep="")]]))
}
#combining layer changes and changing texture names 
r@data$BAHG_SRC  <- paste(c$SRC_1,
                    c$W1,c$L1,
                    c$W2,c$L2,
                    c$W3,c$L3,
                    c$W4,c$L4,
                    c$W5,c$L5,
                    c$W6,c$L6,
                    c$W7,c$L7,
                    c$W8,c$L8,
                    c$W9,c$L9,
                    c$W10,c$L10,
                    c$W11,c$L11,
                    c$W12,c$L12,
                    c$W13,c$L13,
                    c$W14,c$L14,
                    c$W15,c$L15,
                    c$W16,c$L16,
                    c$W17,c$L17,
                    c$W18,c$L18,
                    c$W19,c$L19,
                    sep="")
#eliminating no changes
r@data$BAHG_SRC <- gsub("NA", "", r@data$BAHG_SRC)
head(r@data$BAHG_SRC,100)
#######################################################################################################
#export
#######################################################################################################
setwd(file.path(W.DIR,RESULT.DIR))
shapefile(r, paste(substr(RU,1,nchar(RU)-4),"_BAHG_TYP",sep="",".shp"), overwrite=TRUE)
df.tx <- data.frame(ID=r@data$ID,r@data[grepl("BAHG", names(r@data))])
setwd(file.path(W.DIR,RESULT.DIR))
write.table(df.tx, file = paste(substr(RU,1,nchar(RU)-4),"_BAHG_TYP",sep="",".csv"), 
            append = FALSE, 
            quote = FALSE, 
            sep = ";",
            dec = ",", 
            row.names = FALSE,
            col.names = TRUE)
