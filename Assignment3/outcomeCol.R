outcomeCol <- function(outcome) {
  if (outcome == "heart attack") {
    outcome <- "Hospital.30.Day.Death..Mortality..Rates.from.Heart.Attack"
  } else if (outcome == "heart failure") {
    outcome <- "Hospital.30.Day.Death..Mortality..Rates.from.Heart.Failure"
  } else if (outcome == "pneumonia") {
    outcome <- "Hospital.30.Day.Death..Mortality..Rates.from.Pneumonia"
  }
  else {
    stop("invalid outcome")
  }
}