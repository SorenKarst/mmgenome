% Generated by roxygen2 (4.1.1): do not edit by hand
% Please edit documentation in R/mmextract.R
\name{mmextract}
\alias{mmextract}
\title{Extracts a subset of scaffolds}
\usage{
mmextract(data, selection)
}
\arguments{
\item{data}{(required) The dataframe containing all data.}

\item{selection}{(required) Extract the scaffolds within the subspace.}

\item{minlength}{Minimum scaffold length.}

\item{exclude}{Vector of scaffold names to exclude.}

\item{include}{Vector of scaffold names to include.}

\item{original}{The original dataset, required when using include.}
}
\value{
The subset of scaffolds in the original dataframe within the defined selection.
}
\description{
Extracts a subset of scaffolds defined on a \code{mmplot} and selected using \code{mmplot_locator}.
}
\examples{
\dontrun{
data(rocco)

p <- mmplot(data = d, x = "C13.12.03", y = "C14.01.09", log.x = T, log.y = T, color = "phylum", minlength = 3000)
p
sel <- mmplot_locator(p)
sel <- data.frame(C13.12.03  =  c(1.39, 2.07, 16.8, 19.4, 7.72, 1.76),
                  C14.01.09  =  c(29.4, 67.6, 85.9, 43.6, 16.7, 14.9))
mmplot_selection(p, sel)

dA <- mmextract(d, sel)
}
}
\author{
Soren M. Karst \email{smk@bio.aau.dk}

Mads Albertsen \email{MadsAlbertsen85@gmail.com}
}

