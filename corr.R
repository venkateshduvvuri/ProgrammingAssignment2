corr <- function(directory, threshold = 0){
    dat <- numeric()
    j <- 1
    for(i in 1:332){
        dataFile <- read.csv(paste(directory,"\\",sprintf("%03d",i),".csv",sep=""),header=TRUE,sep=",")
        dataFileSubset <- dataFile[complete.cases(dataFile),]
        n <- nrow(dataFileSubset)
        if(n > threshold){
            c <- cor(x=dataFileSubset$sulfate,y=dataFileSubset$nitrate)
            dat[j] <- c
            j <- j+1
        }
    }
    dat
}