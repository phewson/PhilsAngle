plotlens <-
function(m1,m2){
  endoflens <- findtilt(m1, m2)
  lensslope <- lm(y~x, data= endoflens)
  abline(lensslope, col = "blue", lty = 3)
  points(endoflens, pch = 3, col = "blue")
  return(anglefinder(lensslope))
}
