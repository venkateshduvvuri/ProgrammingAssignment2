complete <- function(directory,id = 1:332){
    dat <- data.frame(id=integer(),nobs=integer())
    for(i in id){
        dataFile <- read.csv(paste(directory,"\\",sprintf("%03d",i),".csv",sep=""),header=TRUE,sep=",")
        dat <- rbind(dat,data.frame(id = i, nobs = nrow(dataFile[complete.cases(dataFile),])))
    }
    dat
}