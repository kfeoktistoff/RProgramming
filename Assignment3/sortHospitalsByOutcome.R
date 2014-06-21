sortHospitalsByOutcome <- function(state, outcome) {
  source("outcomeCol.R")
  outcome <- outcomeCol(outcome)
  
  data <- read.csv("data/outcome-of-care-measures.csv", stringsAsFactors=FALSE)
  
  if (!state %in% data$State) {
    stop("invalid state")
  }
  
  data <- data[data$State==state,]
  
  data[,outcome] <- suppressWarnings(as.numeric(data[,outcome]))
  data <- data[order(data[outcome], data$"Hospital.Name"),]
  as.character(data$"Hospital.Name"[!is.na(data[outcome])])
}