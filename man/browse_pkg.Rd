% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/browse-pkg.R
\name{browse_pkg}
\alias{browse_pkg}
\title{Browse pkgdown site if it exists}
\usage{
browse_pkg(
  package = NULL,
  open = FALSE,
  news_only = FALSE,
  ref_only = FALSE,
  vignettes_show = TRUE
)
}
\arguments{
\item{package}{Name of package. If \code{NULL}, the active project is targeted,
regardless of whether it's an R package or not. If \code{"<org>/<repo>"} is
supplied, will jump to GitHub homepage.}

\item{open}{Whether to open the pkgdown site in the browser.}

\item{news_only}{Should only the news link be shown?}

\item{ref_only}{Should only the reference index be show?}

\item{vignettes_show}{Should the vignette information be displayed on console?}
}
\value{
The package website URL, invisibly. (If \code{ref_only}, or \code{news_only}, the reference index URL or Changelog URL).
}
\description{
A wrapper around \code{\link[usethis:browse-this]{usethis::browse_package()}} that aims at identifying the
package website. It looks up for a link in DESCRIPTION.
}
\examples{
\dontshow{if (interactive()) (if (getRversion() >= "3.4") withAutoprint else force)(\{ # examplesIf}
browse_pkg("reuseme")
browse_pkg()
\dontshow{\}) # examplesIf}
}
