plotlens <-
function(m1,m2){
  workings <- findtilt(m1,m2)
  endoflens <- workings$points
  lensslope <- lm(y~x, data= endoflens)
  abline(lensslope, col = "blue", lty = 3)
  points(endoflens, pch = 3, col = "blue")
  return(list(angle=anglefinder(lensslope), mid=workings$midx) )
}
