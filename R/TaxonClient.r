# Netherlands Biodiversity Api
#
# Access to the digitised Natural History collection at the Naturalis Biodiversity Center
#
# OpenAPI spec version: v2
# Contact: support@naturalis.nl
# Generated by: https://github.com/swagger-api/swagger-codegen.git

#' @title Taxon operations
#' @description nbaR.Taxon
#'
#' @field path Stores url path of the request.
#' @field userAgent Set the user agent of the request.
#'
#' @importFrom R6 R6Class
#'
#' @section Methods:
#' \describe{
#'
#' count Get the number of taxa matching a given condition
#'
#'
#' count_distinct_values Count the distinct number of values that exist for a given field
#'
#'
#' count_distinct_values_per_group Count the distinct number of field values that exist per the given field to group by
#'
#'
#' download_query Dynamic download service: Query for taxa and return result as a stream ...
#'
#'
#' dwca_get_data_set Download dataset as Darwin Core Archive File
#'
#'
#' dwca_get_data_set_names Retrieve the names of all available datasets
#'
#'
#' dwca_query Dynamic download service: Query for taxa and return result as Darwin Core Archive File
#'
#'
#' find Find a taxon by id
#'
#'
#' find_by_ids Find taxa by ids
#'
#'
#' get_distinct_values Get all different values that can be found for one field
#'
#'
#' get_distinct_values_per_group Get all distinct values (and their document count) for the field given divided per distinct value of the field to group by
#'
#'
#' get_field_info Returns extended information for each field of a specimen document
#'
#'
#' get_paths Returns the full path of all fields within a document
#'
#'
#' get_setting Get the value of an NBA setting
#'
#'
#' get_settings List all publicly available configuration settings for the NBA
#'
#'
#' group_by_scientific_name Aggregates Taxon and Specimen documents according to their scientific names
#'
#'
#' is_operator_allowed Checks if a given operator is allowed for a given field
#'
#'
#' query Query for taxa
#'
#' }
#'
#' @export
TaxonClient <- R6::R6Class(
  "TaxonClient",
  inherit = ApiClient,
  public = list(
    userAgent = "Swagger-Codegen/0.0.0/r",
    initialize = function(basePath) {
      super$initialize(basePath)
    },

    # '@name count
    # '@title Get the number of taxa matching a given condition
    # '@description Conditions given as query parameters or a querySpec JSON
    # '@return \code{ integer }
    # '@param query_spec: ; Object of type QuerySpec or its JSON representation
    # '@param ...; additional parameters passed to httr::GET or httr::POST
    count = function(querySpec = NULL, queryParams = list(), ...) {
      headerParams <- character()
      if (!is.null(querySpec) & length(queryParams) > 0) {
        stop("QuerySpec object cannot be combined with parameters passed via queryParams argument.")
      }

      if (!missing(`querySpec`)) {
        ## querySpec can be either JSON string or object of type QuerySpec.
        param <- ifelse(typeof(`querySpec`) == "environment", `querySpec`$toJSONString(), `querySpec`)
        queryParams["querySpec"] <- param
      }
      ## querySpec parameter has underscore in NBA, omitted in function argument for convenience
      names(queryParams) <- gsub("querySpec", "_querySpec", names(queryParams))

      urlPath <- "/taxon/count"
      response <- self$callApi(
        url = paste0(self$basePath, urlPath),
        method = "GET",
        queryParams = queryParams,
        headerParams = headerParams,
        body = body,
        ...
      )

      if (httr::status_code(response) < 200 || httr::status_code(response) > 299) {
        self$handleError(response)
      } else {
        ## API call result is "primitive type", return vector or single value
        result <- as.integer(httr::content(response))
        Response$new(result, response)
      }
    },
    # '@name count_distinct_values
    # '@title Count the distinct number of values that exist for a given field
    # '@description
    # '@return \code{ list }
    # '@param ...; additional parameters passed to httr::GET or httr::POST
    count_distinct_values = function(field = NULL, ...) {
      headerParams <- character()
      queryParams <- list()
      urlPath <- "/taxon/countDistinctValues/{field}"
      if (!missing(`field`)) {
        urlPath <- gsub(paste0("\\{", "field", "\\}"), `field`, urlPath)
      }

      response <- self$callApi(
        url = paste0(self$basePath, urlPath),
        method = "GET",
        queryParams = queryParams,
        headerParams = headerParams,
        body = body,
        ...
      )

      if (httr::status_code(response) < 200 || httr::status_code(response) > 299) {
        self$handleError(response)
      } else {
        ## API call result is a "map container" and will be parsed to list
        result <- httr::content(response, simplifyVector = T)
        Response$new(result, response)
      }
    },
    # '@name count_distinct_values_per_group
    # '@title Count the distinct number of field values that exist per the given field to group by
    # '@description
    # '@return \code{ list }
    # '@param ...; additional parameters passed to httr::GET or httr::POST
    count_distinct_values_per_group = function(group = NULL, field = NULL, ...) {
      headerParams <- character()
      queryParams <- list()
      urlPath <- "/taxon/countDistinctValuesPerGroup/{group}/{field}"
      if (!missing(`group`)) {
        urlPath <- gsub(paste0("\\{", "group", "\\}"), `group`, urlPath)
      }

      if (!missing(`field`)) {
        urlPath <- gsub(paste0("\\{", "field", "\\}"), `field`, urlPath)
      }

      response <- self$callApi(
        url = paste0(self$basePath, urlPath),
        method = "GET",
        queryParams = queryParams,
        headerParams = headerParams,
        body = body,
        ...
      )

      if (httr::status_code(response) < 200 || httr::status_code(response) > 299) {
        self$handleError(response)
      } else {
        ## API call result is a "map container" and will be parsed to list
        result <- httr::content(response, simplifyVector = T)
        Response$new(result, response)
      }
    },
    # '@name download_query
    # '@title Dynamic download service: Query for taxa and return result as a stream ...
    # '@description Query with query parameters or querySpec JSON. ...
    # '@return \code{ Taxon }
    # '@param query_spec: ; Object of type QuerySpec or its JSON representation
    # '@param ...; additional parameters passed to httr::GET or httr::POST
    download_query = function(querySpec = NULL, queryParams = list(), ...) {
      headerParams <- character()
      if (!is.null(querySpec) & length(queryParams) > 0) {
        stop("QuerySpec object cannot be combined with parameters passed via queryParams argument.")
      }

      if (!missing(`querySpec`)) {
        ## querySpec can be either JSON string or object of type QuerySpec.
        param <- ifelse(typeof(`querySpec`) == "environment", `querySpec`$toJSONString(), `querySpec`)
        queryParams["querySpec"] <- param
      }
      ## querySpec parameter has underscore in NBA, omitted in function argument for convenience
      names(queryParams) <- gsub("querySpec", "_querySpec", names(queryParams))

      urlPath <- "/taxon/download"
      response <- self$callApi(
        url = paste0(self$basePath, urlPath),
        method = "GET",
        queryParams = queryParams,
        headerParams = headerParams,
        body = body,
        ...
      )

      if (httr::status_code(response) < 200 || httr::status_code(response) > 299) {
        self$handleError(response)
      } else {
        ## API call result is object of model class
        returnObject <- Taxon$new()
        ## API call result is "list container"
        result <- lapply(httr::content(response), function(x) returnObject$fromList(x, typeMapping = list(item = private$getBaseDataType())))
        Response$new(result, response)
      }
    },
    # '@name dwca_get_data_set
    # '@title Download dataset as Darwin Core Archive File
    # '@description Available datasets can be queried with /taxon/dwca/getDataSetNames. Response saved to &lt;datasetname&gt;-&lt;yyyymmdd&gt;.dwca.zip
    # '@return \code{  }
    # '@param ...; additional parameters passed to httr::GET or httr::POST
    dwca_get_data_set = function(dataset = NULL, filename = format(Sys.time(), "download-%Y-%m-%dT%H:%m.zip"), ...) {
      headerParams <- character()
      queryParams <- list()
      urlPath <- "/taxon/dwca/getDataSet/{dataset}"
      if (!missing(`dataset`)) {
        urlPath <- gsub(paste0("\\{", "dataset", "\\}"), `dataset`, urlPath)
      }

      response <- self$callApi(
        url = paste0(self$basePath, urlPath),
        method = "GET",
        queryParams = queryParams,
        headerParams = headerParams,
        body = body,
        httr::write_disk(filename),
        httr::progress(),
        ...
      )

      if (httr::status_code(response) < 200 || httr::status_code(response) > 299) {
        self$handleError(response)
      } else {
        cat("Query result written to ", filename, "\n")
        ## empty response, e.g. when file is downloaded
        result <- NULL
        Response$new(result, response)
      }
    },
    # '@name dwca_get_data_set_names
    # '@title Retrieve the names of all available datasets
    # '@description Individual datasets can then be downloaded with /dwca/getDataSet/{dataset}
    # '@return \code{ character }
    # '@param ...; additional parameters passed to httr::GET or httr::POST
    dwca_get_data_set_names = function(...) {
      headerParams <- character()
      queryParams <- list()
      urlPath <- "/taxon/dwca/getDataSetNames"
      response <- self$callApi(
        url = paste0(self$basePath, urlPath),
        method = "GET",
        queryParams = queryParams,
        headerParams = headerParams,
        body = body,
        ...
      )

      if (httr::status_code(response) < 200 || httr::status_code(response) > 299) {
        self$handleError(response)
      } else {
        ## API call result is "primitive type", return vector or single value
        result <- as.character(httr::content(response))
        Response$new(result, response)
      }
    },
    # '@name dwca_query
    # '@title Dynamic download service: Query for taxa and return result as Darwin Core Archive File
    # '@description Query with query parameters or querySpec JSON. Response saved to nba-taxa.dwca.zip
    # '@return \code{  }
    # '@param query_spec: ; Object of type QuerySpec or its JSON representation
    # '@param ...; additional parameters passed to httr::GET or httr::POST
    dwca_query = function(querySpec = NULL, queryParams = list(), filename = format(Sys.time(), "download-%Y-%m-%dT%H:%m.zip"), ...) {
      headerParams <- character()
      if (!is.null(querySpec) & length(queryParams) > 0) {
        stop("QuerySpec object cannot be combined with parameters passed via queryParams argument.")
      }

      if (!missing(`querySpec`)) {
        ## querySpec can be either JSON string or object of type QuerySpec.
        param <- ifelse(typeof(`querySpec`) == "environment", `querySpec`$toJSONString(), `querySpec`)
        queryParams["querySpec"] <- param
      }
      ## querySpec parameter has underscore in NBA, omitted in function argument for convenience
      names(queryParams) <- gsub("querySpec", "_querySpec", names(queryParams))

      urlPath <- "/taxon/dwca/query"
      response <- self$callApi(
        url = paste0(self$basePath, urlPath),
        method = "GET",
        queryParams = queryParams,
        headerParams = headerParams,
        body = body,
        httr::write_disk(filename),
        httr::progress(),
        ...
      )

      if (httr::status_code(response) < 200 || httr::status_code(response) > 299) {
        self$handleError(response)
      } else {
        cat("Query result written to ", filename, "\n")
        ## empty response, e.g. when file is downloaded
        result <- NULL
        Response$new(result, response)
      }
    },
    # '@name find
    # '@title Find a taxon by id
    # '@description If found, returns a single taxon
    # '@return \code{ Taxon }
    # '@param ...; additional parameters passed to httr::GET or httr::POST
    find = function(id = NULL, ...) {
      headerParams <- character()
      queryParams <- list()
      urlPath <- "/taxon/find/{id}"
      if (!missing(`id`)) {
        urlPath <- gsub(paste0("\\{", "id", "\\}"), `id`, urlPath)
      }

      response <- self$callApi(
        url = paste0(self$basePath, urlPath),
        method = "GET",
        queryParams = queryParams,
        headerParams = headerParams,
        body = body,
        ...
      )

      if (httr::status_code(response) < 200 || httr::status_code(response) > 299) {
        self$handleError(response)
      } else {
        ## API call result is object of model class
        returnObject <- Taxon$new()
        ## API call result is QueryResult, list items must be mapped to model class
        result <- returnObject$fromList(httr::content(response), typeMapping = list(item = private$getBaseDataType()))
        Response$new(result, response)
      }
    },
    # '@name find_by_ids
    # '@title Find taxa by ids
    # '@description Given multiple ids, returns a list of taxa
    # '@return \code{ Taxon }
    # '@param ...; additional parameters passed to httr::GET or httr::POST
    find_by_ids = function(ids = NULL, ...) {
      headerParams <- character()
      queryParams <- list()
      urlPath <- "/taxon/findByIds/{ids}"
      if (!missing(`ids`)) {
        urlPath <- gsub(paste0("\\{", "ids", "\\}"), `ids`, urlPath)
      }

      response <- self$callApi(
        url = paste0(self$basePath, urlPath),
        method = "GET",
        queryParams = queryParams,
        headerParams = headerParams,
        body = body,
        ...
      )

      if (httr::status_code(response) < 200 || httr::status_code(response) > 299) {
        self$handleError(response)
      } else {
        ## API call result is object of model class
        returnObject <- Taxon$new()
        ## API call result is "list container"
        result <- lapply(httr::content(response), function(x) returnObject$fromList(x, typeMapping = list(item = private$getBaseDataType())))
        Response$new(result, response)
      }
    },
    # '@name get_distinct_values
    # '@title Get all different values that can be found for one field
    # '@description A list of all fields for taxon documents can be retrieved with /metadata/getFieldInfo
    # '@return \code{ list }
    # '@param ...; additional parameters passed to httr::GET or httr::POST
    get_distinct_values = function(field = NULL, ...) {
      headerParams <- character()
      queryParams <- list()
      urlPath <- "/taxon/getDistinctValues/{field}"
      if (!missing(`field`)) {
        urlPath <- gsub(paste0("\\{", "field", "\\}"), `field`, urlPath)
      }

      response <- self$callApi(
        url = paste0(self$basePath, urlPath),
        method = "GET",
        queryParams = queryParams,
        headerParams = headerParams,
        body = body,
        ...
      )

      if (httr::status_code(response) < 200 || httr::status_code(response) > 299) {
        self$handleError(response)
      } else {
        ## API call result is a "map container" and will be parsed to list
        result <- httr::content(response, simplifyVector = T)
        Response$new(result, response)
      }
    },
    # '@name get_distinct_values_per_group
    # '@title Get all distinct values (and their document count) for the field given divided per distinct value of the field to group by
    # '@description
    # '@return \code{ list }
    # '@param ...; additional parameters passed to httr::GET or httr::POST
    get_distinct_values_per_group = function(group = NULL, field = NULL, ...) {
      headerParams <- character()
      queryParams <- list()
      urlPath <- "/taxon/getDistinctValuesPerGroup/{group}/{field}"
      if (!missing(`group`)) {
        urlPath <- gsub(paste0("\\{", "group", "\\}"), `group`, urlPath)
      }

      if (!missing(`field`)) {
        urlPath <- gsub(paste0("\\{", "field", "\\}"), `field`, urlPath)
      }

      response <- self$callApi(
        url = paste0(self$basePath, urlPath),
        method = "GET",
        queryParams = queryParams,
        headerParams = headerParams,
        body = body,
        ...
      )

      if (httr::status_code(response) < 200 || httr::status_code(response) > 299) {
        self$handleError(response)
      } else {
        ## API call result is "primitive type", return vector or single value
        result <- as.list(httr::content(response))
        Response$new(result, response)
      }
    },
    # '@name get_field_info
    # '@title Returns extended information for each field of a specimen document
    # '@description Info consists of whether the fields is indexed, the ElasticSearch datatype and a list of allowed operators
    # '@return \code{ list }
    # '@param ...; additional parameters passed to httr::GET or httr::POST
    get_field_info = function(...) {
      headerParams <- character()
      queryParams <- list()
      urlPath <- "/taxon/metadata/getFieldInfo"
      response <- self$callApi(
        url = paste0(self$basePath, urlPath),
        method = "GET",
        queryParams = queryParams,
        headerParams = headerParams,
        body = body,
        ...
      )

      if (httr::status_code(response) < 200 || httr::status_code(response) > 299) {
        self$handleError(response)
      } else {
        ## API call result is a "map container" and will be parsed to list
        result <- httr::content(response, simplifyVector = T)
        Response$new(result, response)
      }
    },
    # '@name get_paths
    # '@title Returns the full path of all fields within a document
    # '@description See also metadata/getFieldInfo for all allowed operators per field
    # '@return \code{ character }
    # '@param ...; additional parameters passed to httr::GET or httr::POST
    get_paths = function(...) {
      headerParams <- character()
      queryParams <- list()
      urlPath <- "/taxon/metadata/getPaths"
      response <- self$callApi(
        url = paste0(self$basePath, urlPath),
        method = "GET",
        queryParams = queryParams,
        headerParams = headerParams,
        body = body,
        ...
      )

      if (httr::status_code(response) < 200 || httr::status_code(response) > 299) {
        self$handleError(response)
      } else {
        ## API call result is "primitive type", return vector or single value
        result <- as.character(httr::content(response))
        Response$new(result, response)
      }
    },
    # '@name get_setting
    # '@title Get the value of an NBA setting
    # '@description All settings can be queried with /metadata/getSettings
    # '@return \code{ list }
    # '@param ...; additional parameters passed to httr::GET or httr::POST
    get_setting = function(name = NULL, ...) {
      headerParams <- character()
      queryParams <- list()
      urlPath <- "/taxon/metadata/getSetting/{name}"
      if (!missing(`name`)) {
        urlPath <- gsub(paste0("\\{", "name", "\\}"), `name`, urlPath)
      }

      response <- self$callApi(
        url = paste0(self$basePath, urlPath),
        method = "GET",
        queryParams = queryParams,
        headerParams = headerParams,
        body = body,
        ...
      )

      if (httr::status_code(response) < 200 || httr::status_code(response) > 299) {
        self$handleError(response)
      } else {
        ## API call result is "primitive type", return vector or single value
        result <- as.list(httr::content(response))
        Response$new(result, response)
      }
    },
    # '@name get_settings
    # '@title List all publicly available configuration settings for the NBA
    # '@description The value of a specific setting can be queried with metadata/getSetting/{name}
    # '@return \code{ list }
    # '@param ...; additional parameters passed to httr::GET or httr::POST
    get_settings = function(...) {
      headerParams <- character()
      queryParams <- list()
      urlPath <- "/taxon/metadata/getSettings"
      response <- self$callApi(
        url = paste0(self$basePath, urlPath),
        method = "GET",
        queryParams = queryParams,
        headerParams = headerParams,
        body = body,
        ...
      )

      if (httr::status_code(response) < 200 || httr::status_code(response) > 299) {
        self$handleError(response)
      } else {
        ## API call result is a "map container" and will be parsed to list
        result <- httr::content(response, simplifyVector = T)
        Response$new(result, response)
      }
    },
    # '@name group_by_scientific_name
    # '@title Aggregates Taxon and Specimen documents according to their scientific names
    # '@description Returns a list with ScientificNameGroups, which contain Taxon and Specimen documents that share a scientific name
    # '@return \code{ QueryResult }
    # '@param query_spec: ; Object of type QuerySpec or its JSON representation
    # '@param ...; additional parameters passed to httr::GET or httr::POST
    group_by_scientific_name = function(querySpec = NULL, queryParams = list(), ...) {
      headerParams <- character()
      if (!is.null(querySpec) & length(queryParams) > 0) {
        stop("QuerySpec object cannot be combined with parameters passed via queryParams argument.")
      }

      if (!missing(`querySpec`)) {
        ## querySpec can be either JSON string or object of type QuerySpec.
        param <- ifelse(typeof(`querySpec`) == "environment", `querySpec`$toJSONString(), `querySpec`)
        queryParams["querySpec"] <- param
      }
      ## querySpec parameter has underscore in NBA, omitted in function argument for convenience
      names(queryParams) <- gsub("querySpec", "_querySpec", names(queryParams))

      urlPath <- "/taxon/groupByScientificName"
      response <- self$callApi(
        url = paste0(self$basePath, urlPath),
        method = "GET",
        queryParams = queryParams,
        headerParams = headerParams,
        body = body,
        ...
      )

      if (httr::status_code(response) < 200 || httr::status_code(response) > 299) {
        self$handleError(response)
      } else {
        ## API call result is object of model class
        returnObject <- QueryResult$new()
        ## API call result is QueryResult, list items must be mapped to model class
        result <- returnObject$fromList(httr::content(response), typeMapping = list(item = private$getBaseDataType()))
        Response$new(result, response)
      }
    },
    # '@name is_operator_allowed
    # '@title Checks if a given operator is allowed for a given field
    # '@description See also metadata/getFieldInfo
    # '@return \code{ list }
    # '@param ...; additional parameters passed to httr::GET or httr::POST
    is_operator_allowed = function(field = NULL, operator = NULL, ...) {
      headerParams <- character()
      queryParams <- list()
      urlPath <- "/taxon/metadata/isOperatorAllowed/{field}/{operator}"
      if (!missing(`field`)) {
        urlPath <- gsub(paste0("\\{", "field", "\\}"), `field`, urlPath)
      }

      if (!missing(`operator`)) {
        urlPath <- gsub(paste0("\\{", "operator", "\\}"), `operator`, urlPath)
      }

      response <- self$callApi(
        url = paste0(self$basePath, urlPath),
        method = "GET",
        queryParams = queryParams,
        headerParams = headerParams,
        body = body,
        ...
      )

      if (httr::status_code(response) < 200 || httr::status_code(response) > 299) {
        self$handleError(response)
      } else {
        ## API call result is a "map container" and will be parsed to list
        result <- httr::content(response, simplifyVector = T)
        Response$new(result, response)
      }
    },
    # '@name query
    # '@title Query for taxa
    # '@description Search for taxa (GET) using query parameters or a querySpec JSON
    # '@return \code{ QueryResult }
    # '@param query_spec: ; Object of type QuerySpec or its JSON representation
    # '@param ...; additional parameters passed to httr::GET or httr::POST
    query = function(querySpec = NULL, queryParams = list(), ...) {
      headerParams <- character()
      if (!is.null(querySpec) & length(queryParams) > 0) {
        stop("QuerySpec object cannot be combined with parameters passed via queryParams argument.")
      }

      if (!missing(`querySpec`)) {
        ## querySpec can be either JSON string or object of type QuerySpec.
        param <- ifelse(typeof(`querySpec`) == "environment", `querySpec`$toJSONString(), `querySpec`)
        queryParams["querySpec"] <- param
      }
      ## querySpec parameter has underscore in NBA, omitted in function argument for convenience
      names(queryParams) <- gsub("querySpec", "_querySpec", names(queryParams))

      urlPath <- "/taxon/query"
      response <- self$callApi(
        url = paste0(self$basePath, urlPath),
        method = "GET",
        queryParams = queryParams,
        headerParams = headerParams,
        body = body,
        ...
      )

      if (httr::status_code(response) < 200 || httr::status_code(response) > 299) {
        self$handleError(response)
      } else {
        ## API call result is object of model class
        returnObject <- QueryResult$new()
        ## API call result is QueryResult, list items must be mapped to model class
        result <- returnObject$fromList(httr::content(response), typeMapping = list(item = private$getBaseDataType()))
        Response$new(result, response)
      }
    }
  )
)
