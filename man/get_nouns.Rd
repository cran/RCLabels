% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/extractors.R
\name{get_nouns}
\alias{get_nouns}
\title{Extract nouns from labels}
\usage{
get_nouns(labels, notation = RCLabels::bracket_notation)
}
\arguments{
\item{labels}{A list or vector of labels from which nouns are to be extracted.}

\item{notation}{The notation type to be used when extracting nouns.
Default is \code{RCLabels::bracket_notation}.}
}
\value{
A list of nouns from row and column labels.
}
\description{
Nouns are the first part of a row-column label,
"a" in "a [b]".
Internally, this function calls \code{keep_pref_suff()}
and asks for the prefix.
}
\examples{
get_nouns("a [b]", bracket_notation)
# Also works with vectors and lists.
get_nouns(c("a [b]", "c [d]"))
get_nouns(list("a [b]", "c [d]"))
}