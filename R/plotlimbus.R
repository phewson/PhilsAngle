plotlimbus <-
function(limbus){
abline(limbus$slope, col = "green")
return(anglefinder(limbus$slope))
}
