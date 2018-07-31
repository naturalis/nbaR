# Netherlands Biodiversity Api
#
# Access to the digitised Natural History collection at the Naturalis Biodiversity Center
#
# OpenAPI spec version: v2
# Contact: support@naturalis.nl
# Generated by: https://github.com/swagger-api/swagger-codegen.git

#' @title Multimedia operations
#' @description nbaR.Multimedia
#'
#' @field path Stores url path of the request.
#' @field userAgent Set the user agent of the request.
#'
#' @importFrom R6 R6Class
#'
#' @section Methods:
#' \describe{
#'
#' count Get the number of multimedia documents matching a given condition
#'
#'
#' count_distinct_values Count the distinct number of values that exist for a given field
#'
#'
#' count_distinct_values_per_group Count the distinct number of field values that exist per the given field to group by
#'
#'
#' download_query Dynamic download service: Query for multimedia objects and return result as a stream ...
#'
#'
#' find Find a multimedia document by id
#'
#'
#' find_by_ids Find multimedia document by ids
#'
#'
#' get_distinct_values Get all different values that can be found for one field
#'
#'
#' get_distinct_values_per_group Get all distinct values (and their document count) for the field given divided per distinct value of the field to group by
#'
#'
#' get_field_info Returns extended information for each field of a multimedia document
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
#' is_operator_allowed Checks if a given operator is allowed for a given field
#'
#'
#' query Query for multimedia documents
#'
#' }
#'
#' @export
MultimediaClient <- R6::R6Class(
  "MultimediaClient",
  inherit = ApiClient,
  public = list(
    userAgent = "Swagger-Codegen/0.0.0/r",
    initialize = function(basePath) {
      super$initialize(basePath)
    },

    # '@name count
    # '@title Get the number of multimedia documents matching a given condition
    # '@description Conditions given as query parameters or QuerySpec JSON
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

      urlPath <- "/multimedia/count"
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
    # '@return \code{ integer }
    # '@param ...; additional parameters passed to httr::GET or httr::POST
    count_distinct_values = function(field = NULL, ...) {
      headerParams <- character()
      queryParams <- list()
      urlPath <- "/multimedia/countDistinctValues/{field}"
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
        result <- as.integer(httr::content(response))
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
      urlPath <- "/multimedia/countDistinctValuesPerGroup/{group}/{field}"
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
    # '@title Dynamic download service: Query for multimedia objects and return result as a stream ...
    # '@description Query with query parameters or querySpec JSON. ...
    # '@return \code{  }
    # '@param collection_type: character; Example query param
    # '@param ...; additional parameters passed to httr::GET or httr::POST
    download_query = function(collectionType = NULL, queryParams = list(), ...) {
      headerParams <- character()
      if (!is.null(querySpec) & length(queryParams) > 0) {
        stop("QuerySpec object cannot be combined with parameters passed via queryParams argument.")
      }

      if (!missing(`collectionType`)) {
        ## querySpec can be either JSON string or object of type QuerySpec.
        param <- ifelse(typeof(`collectionType`) == "environment", `collectionType`$toJSONString(), `collectionType`)
        queryParams["collectionType"] <- param
      }
      ## querySpec parameter has underscore in NBA, omitted in function argument for convenience
      names(queryParams) <- gsub("querySpec", "_querySpec", names(queryParams))

      urlPath <- "/multimedia/download"
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
        ## empty response, e.g. when file is downloaded
        result <- NULL
        Response$new(result, response)
      }
    },
    # '@name find
    # '@title Find a multimedia document by id
    # '@description If found, returns a single multimedia document
    # '@return \code{ MultiMediaObject }
    # '@param ...; additional parameters passed to httr::GET or httr::POST
    find = function(id = NULL, ...) {
      headerParams <- character()
      queryParams <- list()
      urlPath <- "/multimedia/find/{id}"
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
        returnObject <- MultiMediaObject$new()
        ## API call result is QueryResult, list items must be mapped to model class
        result <- returnObject$fromList(httr::content(response), typeMapping = list(item = private$getBaseDataType()))
        Response$new(result, response)
      }
    },
    # '@name find_by_ids
    # '@title Find multimedia document by ids
    # '@description Given multiple ids, returns a list of multimedia documents
    # '@return \code{ MultiMediaObject }
    # '@param ...; additional parameters passed to httr::GET or httr::POST
    find_by_ids = function(ids = NULL, ...) {
      headerParams <- character()
      queryParams <- list()
      urlPath <- "/multimedia/findByIds/{ids}"
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
        returnObject <- MultiMediaObject$new()
        ## API call result is "list container"
        result <- lapply(httr::content(response), function(x) returnObject$fromList(x, typeMapping = list(item = private$getBaseDataType())))
        Response$new(result, response)
      }
    },
    # '@name get_distinct_values
    # '@title Get all different values that can be found for one field
    # '@description A list of all fields for multimedia documents can be retrieved with /metadata/getFieldInfo
    # '@return \code{ list }
    # '@param ...; additional parameters passed to httr::GET or httr::POST
    get_distinct_values = function(field = NULL, ...) {
      headerParams <- character()
      queryParams <- list()
      urlPath <- "/multimedia/getDistinctValues/{field}"
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
      urlPath <- "/multimedia/getDistinctValuesPerGroup/{group}/{field}"
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
    # '@title Returns extended information for each field of a multimedia document
    # '@description Info consists of whether the fields is indexed, the ElasticSearch datatype and a list of allowed operators
    # '@return \code{ list }
    # '@param ...; additional parameters passed to httr::GET or httr::POST
    get_field_info = function(...) {
      headerParams <- character()
      queryParams <- list()
      urlPath <- "/multimedia/metadata/getFieldInfo"
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
      urlPath <- "/multimedia/metadata/getPaths"
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
      urlPath <- "/multimedia/metadata/getSetting/{name}"
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
      urlPath <- "/multimedia/metadata/getSettings"
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
    # '@name is_operator_allowed
    # '@title Checks if a given operator is allowed for a given field
    # '@description See also metadata/getFieldInfo
    # '@return \code{ logical }
    # '@param ...; additional parameters passed to httr::GET or httr::POST
    is_operator_allowed = function(field = NULL, operator = NULL, ...) {
      headerParams <- character()
      queryParams <- list()
      urlPath <- "/multimedia/metadata/isOperatorAllowed/{field}/{operator}"
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
        ## API call result is "primitive type", return vector or single value
        result <- as.logical(httr::content(response))
        Response$new(result, response)
      }
    },
    # '@name query
    # '@title Query for multimedia documents
    # '@description Search for multimedia documents with query parameters or QuerySpec JSON string
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

      urlPath <- "/multimedia/query"
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
