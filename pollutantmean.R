getwd()
setwd(dir = "../")


pollutantmean <- function(directory, pollutant, id = 1:332) {
    ## 'directory' is a character vector of length 1 indicating
    ## the location of the CSV files
    directory <- as.character(directory)
    
    ## 'pollutant' is a character vector of length 1 indicating
    ## the name of the pollutant for which we will calculate the
    ## mean; either "sulfate" or "nitrate".
    pollutant <- as.character(pollutant)
    x <-c()
    
    currWD <- getwd()
    
    setwd(directory)
    
    
    ## 'id' is an integer vector indicating the monitor ID numbers
    ## to be used
    id <- as.integer(id)
    
    ## Return the mean of the pollutant across all monitors list
    ## in the 'id' vector (ignoring NA values)
    
    for (i in id) {
            
        if (i < 10){
            z <-paste("00", i, sep="")
        }else if (10 <= i && i < 100){
            z <- paste(0, i, sep ="")
        }else {
            z <- as.character(i)
        }  
        
        
        
        
        fil <- read.csv(paste(z,".csv",sep = ""),header = T)
        if (pollutant == "sulfate"){
            y <- c(fil$sulfate)
        } else if (pollutant == "nitrate") {
            y <- c(fil$nitrate)
        }
        x <- c(x, y)
    }
    setwd(currWD)
    ##print(x)
    mean_data <- mean (x, na.rm = TRUE)
    round(mean_data, 3)
        
}
pollutantmean(directory = "specdata",pollutant = "nitrate",id = 2)

getwd()


pollutantmean("specdata", "sulfate", 1:10)
pollutantmean("specdata", "nitrate", 70:72)
pollutantmean("specdata", "nitrate", 23)
