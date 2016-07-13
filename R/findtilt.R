findtilt <-
function(mu, ml){
  b <- coef(mu)
  a <- coef(ml)
  x <- rep(0,2)
  x[1] <- findx(a,b,1)
  x[2] <- findx(a,b,-1)
  y <- a[1] + a[2]*x + a[3]*x^2
return(list(points=data.frame(x=x,y=y), midx=sum(x)/2))
}
