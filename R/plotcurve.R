plotcurve <-
function(){
  gridit <- locator()
  points(gridit, pch = 16, col = "red")
  X <- cbind(gridit$x,gridit$x^2)
  m1 <- lm(gridit$y~X)
  xpred <- seq(from=1, to = 2, length = 500)
  xpredM <- cbind(rep(1,500), xpred, xpred^2)
  ypred <- xpredM %*% coef(m1) 
  lines(xpred, ypred, col = "red", lwd = 1, lty = 3)
return(list(model=m1, data=data.frame(xpred=xpred, ypred=ypred)))
}
