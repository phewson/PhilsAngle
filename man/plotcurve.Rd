\name{plotcurve}
\alias{plotcurve}
%- Also NEED an '\alias' for EACH other topic documented here.
\title{
Collects and plots the quadratic curve for upper and lower
}
\description{
Collects and plots the quadratic curve for upper and lower surfaces of the lens.
}
\usage{
plotcurve()
}
%- maybe also 'usage' for other objects documented here.
\details{
%%  ~~ If necessary, more details than the description above ~~
}
\value{
%%  ~Describe the value returned
%%  If it is a LIST, use
%%  \item{comp1 }{Description of 'comp1'}
%%  \item{comp2 }{Description of 'comp2'}
%% ...
}
\references{
%% ~put references to the literature/web site here ~
}
\author{
%%  ~~who you are~~
}
\note{
%%  ~~further notes~~
}

%% ~Make other sections like Warning with \section{Warning }{....} ~

\seealso{
%% ~~objects to See Also as \code{\link{help}}, ~~~
}
\examples{
##---- Should be DIRECTLY executable !! ----
##-- ==>  Define data, use random,
##--	or do  help(data=index)  for the standard data sets.

## The function is currently defined as
function () 
{
    gridit <- locator()
    points(gridit, pch = 16, col = "red")
    X <- cbind(gridit$x, gridit$x^2)
    m1 <- lm(gridit$y ~ X)
    xpred <- seq(from = 1, to = 2, length = 500)
    xpredM <- cbind(rep(1, 500), xpred, xpred^2)
    ypred <- xpredM \%*\% coef(m1)
    lines(xpred, ypred, col = "red", lwd = 1, lty = 3)
    return(list(model = m1, data = data.frame(xpred = xpred, 
        ypred = ypred)))
  }
}
% Add one or more standard keywords, see file 'KEYWORDS' in the
% R documentation directory.
\keyword{ ~kwd1 }% use one of  RShowDoc("KEYWORDS")
\keyword{ ~kwd2 }% __ONLY ONE__ keyword per line
