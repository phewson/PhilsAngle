plothorizontal <-
function(anaxis, name){
abline(anaxis$slope, col = "green")
return(anglefinder(anaxis$slope))
}
