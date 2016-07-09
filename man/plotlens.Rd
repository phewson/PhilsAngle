\name{plotlens}
\alias{plotlens}
%- Also NEED an '\alias' for EACH other topic documented here.
\title{
Plot the line joining lens ends, and return the angle
}
\description{
Plot the line joining lens ends, and return the angle
}
\usage{
plotlens(m1, m2)
}
%- maybe also 'usage' for other objects documented here.
\arguments{
  \item{m1}{
%%     ~~Describe \code{m1} here~~
}
  \item{m2}{
%%     ~~Describe \code{m2} here~~
}
}
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
function (m1, m2) 
{
    endoflens <- findtilt(m1, m2)
    lensslope <- lm(y ~ x, data = endoflens)
    abline(lensslope, col = "blue", lty = 3)
    points(endoflens, pch = 3, col = "blue")
    return(anglefinder(lensslope))
  }
}
% Add one or more standard keywords, see file 'KEYWORDS' in the
% R documentation directory.
\keyword{ ~kwd1 }% use one of  RShowDoc("KEYWORDS")
\keyword{ ~kwd2 }% __ONLY ONE__ keyword per line
