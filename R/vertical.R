vertical <-
function(microns){
  arrowlength <- locator()
  arrow <- max(arrowlength$y)-min(arrowlength$y)
  runits <- microns / arrow
  return(list(runits=runits, 
  mid=c(arrowlength$x[which(arrowlength$y == max(arrowlength$y))], max(arrowlength$y))))
}
