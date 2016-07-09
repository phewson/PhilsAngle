plotbaseline <-
function(anaxis, name){
  # Plots a baseline
  linetype <- 2
  linecol <- "lightgreen"
  if (name == "Pupil"){linetype <- 3; linecol<- "green"}
  abline(anaxis$slope, col = linecol, lty = linetype)
  return(anglefinder(anaxis$slope))
}
