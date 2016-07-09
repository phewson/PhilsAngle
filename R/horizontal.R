horizontal <-
function(microns){
  arrowlength <- locator()
  arrow <- max(arrowlength$x)-min(arrowlength$x)
  runits <- microns / arrow
  return(list(runits=runits))
}
