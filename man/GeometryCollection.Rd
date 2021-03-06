% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/GeometryCollection.r
\docType{class}
\name{GeometryCollection}
\alias{GeometryCollection}
\title{GeometryCollection Class}
\format{R6 class}
\usage{
# GeometryCollection$new()
}
\description{
For more information on the NBA object model, please refer to the
official NBA documentation at
\href{https://docs.biodiversitydata.nl}{https://docs.biodiversitydata.nl} and
the NBA model and endpoints reference at
\href{https://docs.biodiversitydata.nl/endpoints-reference}{https://docs.biodiversitydata.nl/endpoints-reference}.
}
\details{
Model class for GeometryCollection objects.
}
\section{Fields}{

\describe{
\item{\code{crs}}{Crs}

\item{\code{bbox}}{list(numeric)}

\item{\code{geometries}}{list(list)}
}}

\section{Methods}{

\describe{

\item{\code{$new()}}{

  Constructor GeometryCollection object.

}
\item{\code{$fromList(GeometryCollectionList)}}{

  Create GeometryCollection object from list.

}

\item{\code{$toList()}}{

  Get list representation of GeometryCollection.

}
\item{\code{fromJSONString(GeometryCollectionJson)}}{

  Create GeometryCollection object from JSON.

}
\item{\code{toJSONString(pretty=TRUE)}}{

  Get JSON representation of GeometryCollection.

}
}
}

\keyword{datasets}
