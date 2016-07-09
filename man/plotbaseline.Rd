\name{plotbaseline}
\alias{plotbaseline}
%- Also NEED an '\alias' for EACH other topic documented here.
\title{
Plot the baseline
}
\description{
This plots the two baselines based on input information
}
\usage{
plotbaseline(anaxis, name)
}
%- maybe also 'usage' for other objects documented here.
\arguments{
  \item{anaxis}{
%%     ~~Describe \code{anaxis} here~~
}
  \item{name}{
%%     ~~Describe \code{name} here~~
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
function (anaxis, name) 
{
    linetype <- 2
    linecol <- "lightgreen"
    if (name == "Pupil") {
        linetype <- 3
        linecol <- "green"
    }
    abline(anaxis$slope, col = linecol, lty = linetype)
    return(anglefinder(anaxis$slope))
  }
}
% Add one or more standard keywords, see file 'KEYWORDS' in the
% R documentation directory.
\keyword{ ~kwd1 }% use one of  RShowDoc("KEYWORDS")
\keyword{ ~kwd2 }% __ONLY ONE__ keyword per line
