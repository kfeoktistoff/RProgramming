pollutantmean <- function(directory, pollutant, id = 1:332) {
  source("obsFileName.R")
  
  allData <- numeric()
  
  for (i in id) {
    filename <- obsFileName(directory, i)

    data <- read.csv(filename)
  
    if (pollutant == "sulfate") {
      allData <- c(allData, data$sulfate)
    } else if (pollutant == "nitrate") {
      allData <- c(allData, data$nitrate)
    }
  }
  
  mean(allData, na.rm=TRUE)
}