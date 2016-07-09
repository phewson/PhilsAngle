findx <-
function(a,b,k){
  x <- ((b[2] - a[2]) + 
      k*( sqrt((a[2] - b[2])^2 - (4*(a[3] - b[3]))*(a[1]-b[1])))) /
      (2*(a[3]-b[3]))
return(x)
}
