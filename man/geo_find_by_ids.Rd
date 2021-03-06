% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/GeoClient-wrapper.r
\name{geo_find_by_ids}
\alias{geo_find_by_ids}
\title{Find geo areas by ids}
\usage{
geo_find_by_ids(ids = NULL, returnType = "data.frame", ...)
}
\arguments{
\item{ids}{ids of multiple geo areas, separated by comma, type: character}

\item{returnType}{Either \code{list} or \code{data.frame} (default)}

\item{...}{additional parameters passed to find_by_ids from class nbaR.GeoClient}
}
\value{
list or data.frame, as specified by \code{returnType}
}
\description{
This is a wrapper for the method \code{ find_by_ids }
from class \code{ GeoClient}.
}
\details{
Given multiple ids, returns a list of geo area objects
}
\seealso{
Other nbaR.GeoClient-wrappers: \code{\link{geo_count_distinct_values_per_group}},
  \code{\link{geo_count_distinct_values}},
  \code{\link{geo_count}}, \code{\link{geo_find}},
  \code{\link{geo_get_distinct_values_per_group}},
  \code{\link{geo_get_distinct_values}},
  \code{\link{geo_get_field_info}},
  \code{\link{geo_get_geo_json_for_locality}},
  \code{\link{geo_get_paths}},
  \code{\link{geo_get_settings}},
  \code{\link{geo_get_setting}},
  \code{\link{geo_is_operator_allowed}},
  \code{\link{geo_query}}
}
\concept{nbaR.GeoClient-wrappers}
