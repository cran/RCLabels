% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/utilities.R
\name{make_list}
\alias{make_list}
\title{Make a list of items in x, regardless of x's type}
\usage{
make_list(x, n, lenx = ifelse(is.vector(x), length(x), 1))
}
\arguments{
\item{x}{The object to be duplicated.}

\item{n}{The number of times to be duplicated.}

\item{lenx}{The length of item \code{x}.
Be default, \code{lenx} is taken to be \code{length(x)},}
}
\value{
A list of \code{x} duplicated \code{n} times
}
\description{
Repeats \code{x} as necessary to make \code{n} of them.
Does not try to simplify \code{x}.
}
\details{
If \code{x} is itself a vector or list,
you may want to override the default value for \code{lenx}.
For example, if \code{x} is a list that should be duplicated several times,
set \code{lenx = 1}.
}
\examples{
m <- matrix(c(1:6), nrow=3, dimnames = list(c("r1", "r2", "r3"), c("c2", "c1")))
make_list(m, n = 1)
make_list(m, n = 2)
make_list(m, n = 5)
make_list(list(c(1,2), c(1,2)), n = 4)
m <- matrix(1:4, nrow = 2)
l <- list(m, m+100)
make_list(l, n = 4)
make_list(l, n = 1) # Warning because l is trimmed.
make_list(l, n = 5) # Warning because length(l) (i.e., 2) not evenly divisible by 5
make_list(list(c("r10", "r11"), c("c10", "c11")), n = 2) # Confused by x being a list
make_list(list(c("r10", "r11"), c("c10", "c11")), n = 2, lenx = 1) # Fix by setting lenx = 1
}
