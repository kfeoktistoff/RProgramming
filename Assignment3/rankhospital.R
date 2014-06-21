rankhospital <- function(state, outcome, num = "best") {
  ## Read outcome data
  ## Check that state and outcome are valid
  ## Return hospital name in that state with the given rank
  ## 30-day death rate
  
  source("best.R")
  source("sortHospitalsByOutcome.R")
  
  if (num=="best") {
    best(state, outcome)
  } else if (num=="worst") {
    tail(sortHospitalsByOutcome(state, outcome), 1)
  } else {
    sortHospitalsByOutcome(state, outcome)[num]
  }
}