% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/SpecimenClient-wrapper.r
\name{specimen_group_by_scientific_name}
\alias{specimen_group_by_scientific_name}
\title{Aggregates Taxon and Specimen documents according to their scientific names}
\usage{
specimen_group_by_scientific_name(queryParams = list(),
  returnType = "data.frame", ...)
}
\arguments{
\item{queryParams}{Named list or vector with names being the fields to be queried and values being the values to match}

\item{returnType}{Either \code{list} or \code{data.frame} (default)}

\item{...}{additional parameters passed to group_by_scientific_name from class nbaR.SpecimenClient}
}
\value{
list or data.frame, as specified by \code{returnType}
}
\description{
This is a wrapper for the method \code{ group_by_scientific_name }
from class \code{ SpecimenClient}.
}
\details{
Returns a list with ScientificNameGroups, which contain Taxon and Specimen documents that share a scientific name
}
\seealso{
Other nbaR.SpecimenClient-wrappers: \code{\link{specimen_count_distinct_values_per_group}},
  \code{\link{specimen_count_distinct_values}},
  \code{\link{specimen_count}},
  \code{\link{specimen_download_query}},
  \code{\link{specimen_dwca_get_data_set_names}},
  \code{\link{specimen_dwca_get_data_set}},
  \code{\link{specimen_dwca_query}},
  \code{\link{specimen_exists}},
  \code{\link{specimen_find_by_ids}},
  \code{\link{specimen_find_by_unit_id}},
  \code{\link{specimen_find}},
  \code{\link{specimen_get_distinct_values_per_group}},
  \code{\link{specimen_get_distinct_values}},
  \code{\link{specimen_get_field_info}},
  \code{\link{specimen_get_ids_in_collection}},
  \code{\link{specimen_get_named_collections}},
  \code{\link{specimen_get_paths}},
  \code{\link{specimen_get_settings}},
  \code{\link{specimen_get_setting}},
  \code{\link{specimen_is_operator_allowed}},
  \code{\link{specimen_query}}
}
\concept{nbaR.SpecimenClient-wrappers}
