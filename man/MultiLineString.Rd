% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/MultiLineString.r
\docType{class}
\name{MultiLineString}
\alias{MultiLineString}
\title{MultiLineString Class}
\format{R6 class}
\usage{
# MultiLineString$new()
}
\description{
For more information on the NBA object model, please refer to the
official NBA documentation at
\href{https://docs.biodiversitydata.nl}{https://docs.biodiversitydata.nl} and
the NBA model and endpoints reference at
\href{https://docs.biodiversitydata.nl/endpoints-reference}{https://docs.biodiversitydata.nl/endpoints-reference}.
}
\details{
Model class for MultiLineString objects.
}
\section{Fields}{

\describe{
\item{\code{crs}}{Crs}

\item{\code{bbox}}{list(numeric)}

\item{\code{coordinates}}{list(LngLatAlt)}
}}

\section{Methods}{

\describe{

\item{\code{$new()}}{

  Constructor MultiLineString object.

}
\item{\code{$fromList(MultiLineStringList)}}{

  Create MultiLineString object from list.

}

\item{\code{$toList()}}{

  Get list representation of MultiLineString.

}
\item{\code{fromJSONString(MultiLineStringJson)}}{

  Create MultiLineString object from JSON.

}
\item{\code{toJSONString(pretty=TRUE)}}{

  Get JSON representation of MultiLineString.

}
}
}

\keyword{datasets}
