anglefinder <-
function(model){
angledegrees <- atan(coef(model)[2])*180/pi
return(angledegrees)
}
