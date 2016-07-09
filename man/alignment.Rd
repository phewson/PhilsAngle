\name{alignment}
\alias{alignment}
%- Also NEED an '\alias' for EACH other topic documented here.
\title{
Find the baseline alignment (angle) given position of limbus or pupil
}
\description{
Uses locator to capture information on baseline orientation of the eye
}
\usage{
alignment(type = "l")
}
%- maybe also 'usage' for other objects documented here.
\arguments{
  \item{type}{
%%     ~~Describe \code{type} here~~
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
function (type = "l") 
{
    InputPoints <- locator()
    slope <- lm(InputPoints$y ~ InputPoints$x)
    points(InputPoints$x, InputPoints$y, col = "green")
    text(InputPoints$x, InputPoints$y, type, pos = 1, col = "green")
    mid <- sum(InputPoints$x)/2
    return(list(slope = slope, mid = mid))
  }
}
% Add one or more standard keywords, see file 'KEYWORDS' in the
% R documentation directory.
\keyword{ ~kwd1 }% use one of  RShowDoc("KEYWORDS")
\keyword{ ~kwd2 }% __ONLY ONE__ keyword per line
