best <- function(state, outcome) {
  ## Read outcome data
  ## Check that state and outcome are valid
  ## Return hospital name in that state with lowest 30-day death
  ## rate
  
  source("sortHospitalsByOutcome.R")
  head(sortHospitalsByOutcome(state, outcome), 1)
}