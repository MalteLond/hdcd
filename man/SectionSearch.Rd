% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/optimizers.R
\name{SectionSearch}
\alias{SectionSearch}
\title{SectionSearch}
\usage{
SectionSearch(x, split_candidates, n_obs, SegmentLossFUN, start, end,
  min_points = 3, stepsize = 0.5, k_sigma = 0)
}
\arguments{
\item{x}{A n times p matrix or data frame.}

\item{split_candidates}{A vector of indices where splits of \code{x} can
occur.}

\item{n_obs}{The number of observations in the data set.}

\item{SegmentLossFUN}{A loss function as created by closure \code{\link{SegmentLoss}}.}

\item{start}{The start index of the given segment \code{x}.}

\item{end}{The end index of the given segment \code{x}.}

\item{min_points}{The number of points left between right and left that
triggers a final evaluation of all remaining split candidates.}

\item{stepsize}{The stepsize for performing section search, should be in (0,
0.5].}

\item{k_sigma}{Constant part in threshold \eqn{k\sigma \sqrt(log n)} that
loss needs to differ to decied on where to split. If threshold is not met
the loss for the outer segements will be calculated in the algorithmn
proceed on the side with higher loss (which is equal to the variance for
some loss functions).}
}
\value{
Returns a function with arguments left, mid, right, RecFUN where
  RecFun should always be set to the object name of the function has been
  assigned so the function can call itself recursively.
}
\description{
Implements a variant of golden section search where the stepsize can be
choosen freely.
}
\details{
Hence its is possible to trade robustness against computational effciency.
This function is a closure that implements a cache for already calculated
values and returns a function that can be used to find the global minimum
numerically.
}
