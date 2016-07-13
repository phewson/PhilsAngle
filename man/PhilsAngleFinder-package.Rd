\name{PhilsAngleFinder-package}
\alias{PhilsAngleFinder-package}
\alias{PhilsAngleFinder}
\docType{package}
\title{
\packageTitle{PhilsAngleFinder}
}
\description{
\packageDescription{PhilsAngleFinder}
}
\details{

The DESCRIPTION file:
\packageDESCRIPTION{PhilsAngleFinder}
\packageIndices{PhilsAngleFinder}
~~ An overview of how to use the package, including the most important ~~
~~ functions ~~
}
\author{
\packageAuthor{PhilsAngleFinder}

Maintainer: \packageMaintainer{PhilsAngleFinder}
}
\references{
~~ Literature or other references for background information ~~
}
~~ Optionally other standard keywords, one per line, from file KEYWORDS in ~~
~~ the R documentation directory ~~
\keyword{ package }
\seealso{
~~ Optional links to other man pages, e.g. ~~
~~ \code{\link[<pkg>:jpeg<pkg>-]{<pkg>}} ~~
}
\examples{
\dontrun{ 
##

require(jpeg)
ThreeAngles <- rep(0,3)
names(ThreeAngles) <- c("Limbus", "Pupil", "Lens")
plotit <- readJPEG(file.choose())
par(mar = c(0,0,0,0))
plot(1:2, type='n')
rasterImage(plotit,1,1,2,2)
upper <- plotcurve()
lower <- plotcurve()




v <- as.numeric(readline("What is the length of the vertical bar \t \n"))  
verticald <-  vertical(v)





h <- as.numeric(readline("What is the length of the horizontal bar \t"))
horizontald <-  horizontal(h)



limbus <- alignment("L")
ThreeAngles[1] <- plotbaseline(limbus, "Limbus")
pupil <- alignment("P")
ThreeAngles[2] <- plotbaseline(pupil, "Pupil")

MidLens <- plotlens(upper$model, lower$model)
ThreeAngles[3] <- MidLens$angle

## Midpoints

MiddleOfEye <- rep(0,3)
names(MiddleOfEye) <- c("Arrow", "L", "P")
MiddleOfEye[1] <- MidLens$mid
MiddleOfEye[2] <- limbus$mid
MiddleOfEye[3] <- pupil$mid

DecentrationRUnits <- MiddleOfEye - verticald$mid[1]

Decentration.mm <- DecentrationRUnits * (horizontald$runits/1000)

DecentrationRUnits
Decentration.mm



text(c(1.1,1.3,1.5),1.15,c("Limbus", "Pupil", "Lens"), col = "red")
text(c(1.1,1.3,1.5),1.1,paste(ThreeAngles), col = "red")

dev.copy2pdf(file ="datainput.pdf")

##
}


}
