% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/BasicTopicOperations.R
\name{getRegionsScores}
\alias{getRegionsScores}
\title{Get region scores}
\usage{
getRegionsScores(object, method = "Z-score", scaled = TRUE)
}
\arguments{
\item{object}{Initialized cisTopic object, after the object@selected.model has been filled.}

\item{method}{Select the method for processing the region assignments: 'Z-score','Probability' or 'NormTop'.}

\item{rescale}{Whether feature scaling should be performed within the topics. By default, it is set to true.}
}
\value{
Returns the region scores per topic in object@region.data.
}
\description{
Get region scores per topic
}
\details{
'Z-score' computes the Z-score for each topic assingment per cell/region. 'Probability' divides the topic assignments by the total number
of assignments in the cell/region in the last iteration plus alpha. If using 'NormTop', regions are given an score defined by: \eqn{\beta_{w, k} (\log
\beta_{w,k} - 1 / K \sum_{k'} \log \beta_{w,k'})}.
}
