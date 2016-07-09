alignment <-
function(type="l"){
InputPoints <- locator()
slope <- lm(InputPoints$y~InputPoints$x)
points(InputPoints$x, InputPoints$y, col = "green")
text(InputPoints$x, InputPoints$y, type, pos = 1, col = "green")
mid <- sum(InputPoints$x) / 2
return(list(slope=slope, mid = mid))
}
