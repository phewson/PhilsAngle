\name{findtilt}
\alias{findtilt}
%- Also NEED an '\alias' for EACH other topic documented here.
\title{
Find the ends of the lens, and the slope of the line connecting them
}
\description{
Finds the ends of the lens, and the slope of the line connecting them
}
\usage{
findtilt(mu, ml)
}
%- maybe also 'usage' for other objects documented here.
\arguments{
  \item{mu}{
%%     ~~Describe \code{mu} here~~
}
  \item{ml}{
%%     ~~Describe \code{ml} here~~
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
function (mu, ml) 
{
    b <- coef(mu)
    a <- coef(ml)
    x <- rep(0, 2)
    x[1] <- findx(a, b, 1)
    x[2] <- findx(a, b, -1)
    y <- a[1] + a[2] * x + a[3] * x^2
    return(data.frame(x = x, y = y))
  }
}
% Add one or more standard keywords, see file 'KEYWORDS' in the
% R documentation directory.
\keyword{ ~kwd1 }% use one of  RShowDoc("KEYWORDS")
\keyword{ ~kwd2 }% __ONLY ONE__ keyword per line
