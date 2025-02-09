% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/endpoints.R
\name{endpoint_validate_baseline}
\alias{endpoint_validate_baseline}
\title{Validate an baseline input file and return an indication of success and
if successful return the data required by UI.}
\usage{
endpoint_validate_baseline(req, res, type, file)
}
\arguments{
\item{req}{The request as PlumberRequest object.}

\item{res}{The response as a PlumberResponse object.}

\item{type}{The type of file to validate: pjnz, shape, population, ANC,
survey or programme.}

\item{file}{File object containing path, filename and md5 hash.}
}
\value{
Validated JSON response with data and incidcation of success.
}
\description{
Validate an baseline input file and return an indication of success and
if successful return the data required by UI.
}
\keyword{internal}
