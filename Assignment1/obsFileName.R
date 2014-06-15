obsFileName <- function(directory, obs) {
  if (obs<10) {
    filename = paste(directory, "/","00", obs, ".csv", sep="")
  } else if (obs >= 10 && obs < 100) {
    filename = paste(directory, "/", "0", obs, ".csv", sep="")
  } else {
    filename = paste(directory, "/", obs, ".csv", sep="")
  }
}