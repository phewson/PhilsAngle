horizontal <-
function(microns=2000){
  arrowlength <- locator()
  arrow <- max(arrowlength$x)-min(arrowlength$x)
  runits <- microns / arrow
  return(list(runits=runits))
}
