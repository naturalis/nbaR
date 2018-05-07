# Netherlands Biodiversity Api
#
# Access to the digitised Natural History collection at the Naturalis Biodiversity Center
#
# OpenAPI spec version: v2
# Contact: support@naturalis.nl
# Generated by: https://github.com/swagger-api/swagger-codegen.git

#' @title Geo operations
#' @description nbaR.Geo
#'
#' @field path Stores url path of the request.
#' @field userAgent Set the user agent of the request.
#'
#' @importFrom R6 R6Class
#'
#' @section Methods:
#' \describe{
#'
#' count_http_get Get the number of geo areas matching a condition
#'
#'
#' count_http_post_json Get the number of geo areas matching a condition
#'
#'
#' find1 Find a GEO area by id
#'
#'
#' find_by_ids1 Find geo areas by ids
#'
#'
#' get_distinct_values_http_get Get all different values that exist for a field
#'
#'
#' get_distinct_values_http_post_json Get all different values that exist for a field
#'
#'
#' get_field_info Returns extended information for each field of a specimen document
#'
#'
#' get_geo_json_for_locality Retrieve a GeoJson object for a given locality
#'
#'
#' get_paths Returns the full path of all fields within a document
#'
#'
#' get_settings List all publicly available configuration settings for the NBA
#'
#'
#' get_settings1 Get the value of an NBA setting
#'
#'
#' is_operator_allowed Checks if a given operator is allowed for a given field
#'
#'
#' query_http_get Query for geo areas
#'
#'
#' query_http_post_form Query for geo areas
#'
#' }
#'
#' @export
GeoClient <- R6::R6Class(
    'GeoClient',
    inherit=ApiClient,
    public = list(
        userAgent = "Swagger-Codegen/0.0.0/r",
        initialize = function(basePath){
        super$initialize(basePath)
    },

    # '@name count_http_get
    # '@title Get the number of geo areas matching a condition
    # '@description Conditions given as query string
    # '@return \code{ integer }
    # '@param area_type: character; Example query param
    # '@param ...; additional parameters passed to httr::GET or httr::POST
    count_http_get = function(areaType=NULL, queryParams=list(), ...){
        headerParams <- character()
        if (!is.null(querySpec) & length(queryParams) > 0) {
            stop("QuerySpec object cannot be combined with parameters passed via queryParams argument.")
        }
            
        if (!missing(`areaType`)) {
          ## querySpec can be either JSON string or object of type QuerySpec. 
          param <- ifelse(typeof(`areaType`) == "environment", `areaType`$toJSONString(), `areaType`)    
          queryParams['areaType'] <- param
        }
        ## querySpec parameter has underscore in NBA, omitted in function argument for convenience
        names(queryParams) <- gsub("querySpec", "_querySpec", names(queryParams))

        urlPath <- "/geo/count"
        response <- self$callApi(url = paste0(self$basePath, urlPath),
                                 method = "GET",
                                 queryParams = queryParams,
                                 headerParams = headerParams,
                                 body = body,
                                 ...)

        if (httr::status_code(response) < 200 || httr::status_code(response) > 299) {
            self$handleError(response)
        } else {
            ## API call result is 'primitive type', return vector or single value
            result <- as.integer(unlist(httr::content(response)))
            Response$new(result, response)
        }        
    },
    # '@name count_http_post_json
    # '@title Get the number of geo areas matching a condition
    # '@description Conditions given as querySpec JSON
    # '@return \code{ integer }
    # '@param ...; additional parameters passed to httr::GET or httr::POST
    count_http_post_json = function(body=NULL, ...){
        headerParams <- character()
        queryParams <- list()
        if (!missing(`body`)) {
            body <- `body`$toJSONString()
        } else {
            body <- NULL
        }

        urlPath <- "/geo/count"
        response <- self$callApi(url = paste0(self$basePath, urlPath),
                                 method = "POST",
                                 queryParams = queryParams,
                                 headerParams = headerParams,
                                 body = body,
                                 ...)

        if (httr::status_code(response) < 200 || httr::status_code(response) > 299) {
            self$handleError(response)
        } else {
            ## API call result is 'primitive type', return vector or single value
            result <- as.integer(unlist(httr::content(response)))
            Response$new(result, response)
        }        
    },
    # '@name find1
    # '@title Find a GEO area by id
    # '@description Returns a GEO object containing a GEO json polygon
    # '@return \code{ GeoArea }
    # '@param ...; additional parameters passed to httr::GET or httr::POST
    find1 = function(id=NULL, ...){
        headerParams <- character()
        queryParams <- list()
        urlPath <- "/geo/find/{id}"
        if (!missing(`id`)) {
            urlPath <- gsub(paste0("\\{", "id", "\\}"), `id`, urlPath)
        }

        response <- self$callApi(url = paste0(self$basePath, urlPath),
                                 method = "GET",
                                 queryParams = queryParams,
                                 headerParams = headerParams,
                                 body = body,
                                 ...)

        if (httr::status_code(response) < 200 || httr::status_code(response) > 299) {
            self$handleError(response)
        } else {
            ## API call result is object is model class
            returnObject <- GeoArea$new()
            ## API call result is QueryResult, list items must be mapped to model class
            result <- returnObject$fromList(httr::content(response), typeMapping=list(item=self$getBaseDataType()))
            Response$new(result, response)
        }        
    },
    # '@name find_by_ids1
    # '@title Find geo areas by ids
    # '@description Given multiple ids, returns a list of geo area objects
    # '@return \code{ GeoArea }
    # '@param ...; additional parameters passed to httr::GET or httr::POST
    find_by_ids1 = function(ids=NULL, ...){
        headerParams <- character()
        queryParams <- list()
        urlPath <- "/geo/findByIds/{ids}"
        if (!missing(`ids`)) {
            urlPath <- gsub(paste0("\\{", "ids", "\\}"), `ids`, urlPath)
        }

        response <- self$callApi(url = paste0(self$basePath, urlPath),
                                 method = "GET",
                                 queryParams = queryParams,
                                 headerParams = headerParams,
                                 body = body,
                                 ...)

        if (httr::status_code(response) < 200 || httr::status_code(response) > 299) {
            self$handleError(response)
        } else {
            ## API call result is object is model class
            returnObject <- GeoArea$new()
            ## API call result is 'list container'
            result <- lapply(httr::content(response), function(x)returnObject$fromList(x, typeMapping=list(item=self$getBaseDataType())))
            Response$new(result, response)
        }        
    },
    # '@name get_distinct_values_http_get
    # '@title Get all different values that exist for a field
    # '@description A list of all fields for geo area documents can be retrieved with /metadata/getFieldInfo
    # '@return \code{ Specimen }
    # '@param ...; additional parameters passed to httr::GET or httr::POST
    get_distinct_values_http_get = function(field=NULL, ...){
        headerParams <- character()
        queryParams <- list()
        urlPath <- "/geo/getDistinctValues/{field}"
        if (!missing(`field`)) {
            urlPath <- gsub(paste0("\\{", "field", "\\}"), `field`, urlPath)
        }

        response <- self$callApi(url = paste0(self$basePath, urlPath),
                                 method = "GET",
                                 queryParams = queryParams,
                                 headerParams = headerParams,
                                 body = body,
                                 ...)

        if (httr::status_code(response) < 200 || httr::status_code(response) > 299) {
            self$handleError(response)
        } else {
            ## API call result is a 'map container' and will be parsed to list 
            result <- httr::content(response, simplifyVector=T)
            Response$new(result, response)
        }        
    },
    # '@name get_distinct_values_http_post_json
    # '@title Get all different values that exist for a field
    # '@description A list of all fields for geo area documents can be retrieved with /metadata/getFieldInfo
    # '@return \code{ Specimen }
    # '@param ...; additional parameters passed to httr::GET or httr::POST
    get_distinct_values_http_post_json = function(field=NULL, body=NULL, ...){
        headerParams <- character()
        queryParams <- list()
        if (!missing(`body`)) {
            body <- `body`$toJSONString()
        } else {
            body <- NULL
        }

        urlPath <- "/geo/getDistinctValues/{field}"
        if (!missing(`field`)) {
            urlPath <- gsub(paste0("\\{", "field", "\\}"), `field`, urlPath)
        }

        response <- self$callApi(url = paste0(self$basePath, urlPath),
                                 method = "POST",
                                 queryParams = queryParams,
                                 headerParams = headerParams,
                                 body = body,
                                 ...)

        if (httr::status_code(response) < 200 || httr::status_code(response) > 299) {
            self$handleError(response)
        } else {
            ## API call result is a 'map container' and will be parsed to list 
            result <- httr::content(response, simplifyVector=T)
            Response$new(result, response)
        }        
    },
    # '@name get_field_info
    # '@title Returns extended information for each field of a specimen document
    # '@description Info consists of whether the fields is indexed, the ElasticSearch datatype and a list of allowed operators
    # '@return \code{ Specimen }
    # '@param ...; additional parameters passed to httr::GET or httr::POST
    get_field_info = function(...){
        headerParams <- character()
        queryParams <- list()
        urlPath <- "/geo/metadata/getFieldInfo"
        response <- self$callApi(url = paste0(self$basePath, urlPath),
                                 method = "GET",
                                 queryParams = queryParams,
                                 headerParams = headerParams,
                                 body = body,
                                 ...)

        if (httr::status_code(response) < 200 || httr::status_code(response) > 299) {
            self$handleError(response)
        } else {
            ## API call result is a 'map container' and will be parsed to list 
            result <- httr::content(response, simplifyVector=T)
            Response$new(result, response)
        }        
    },
    # '@name get_geo_json_for_locality
    # '@title Retrieve a GeoJson object for a given locality
    # '@description Returns a GeoJson polygon
    # '@return \code{ GeoArea }
    # '@param ...; additional parameters passed to httr::GET or httr::POST
    get_geo_json_for_locality = function(locality=NULL, ...){
        headerParams <- character()
        queryParams <- list()
        urlPath <- "/geo/getGeoJsonForLocality/{locality}"
        if (!missing(`locality`)) {
            urlPath <- gsub(paste0("\\{", "locality", "\\}"), `locality`, urlPath)
        }

        response <- self$callApi(url = paste0(self$basePath, urlPath),
                                 method = "GET",
                                 queryParams = queryParams,
                                 headerParams = headerParams,
                                 body = body,
                                 ...)

        if (httr::status_code(response) < 200 || httr::status_code(response) > 299) {
            self$handleError(response)
        } else {
            ## API call result is object is model class
            returnObject <- GeoArea$new()
            ## API call result is QueryResult, list items must be mapped to model class
            result <- returnObject$fromList(httr::content(response), typeMapping=list(item=self$getBaseDataType()))
            Response$new(result, response)
        }        
    },
    # '@name get_paths
    # '@title Returns the full path of all fields within a document
    # '@description See also metadata/getFieldInfo for all allowed operators per field
    # '@return \code{ character }
    # '@param ...; additional parameters passed to httr::GET or httr::POST
    get_paths = function(...){
        headerParams <- character()
        queryParams <- list()
        urlPath <- "/geo/metadata/getPaths"
        response <- self$callApi(url = paste0(self$basePath, urlPath),
                                 method = "GET",
                                 queryParams = queryParams,
                                 headerParams = headerParams,
                                 body = body,
                                 ...)

        if (httr::status_code(response) < 200 || httr::status_code(response) > 299) {
            self$handleError(response)
        } else {
            ## API call result is 'primitive type', return vector or single value
            result <- as.character(unlist(httr::content(response)))
            Response$new(result, response)
        }        
    },
    # '@name get_settings
    # '@title List all publicly available configuration settings for the NBA
    # '@description The value of a specific setting can be queried with metadata/getSetting/{name}
    # '@return \code{ Specimen }
    # '@param ...; additional parameters passed to httr::GET or httr::POST
    get_settings = function(...){
        headerParams <- character()
        queryParams <- list()
        urlPath <- "/geo/metadata/getSettings"
        response <- self$callApi(url = paste0(self$basePath, urlPath),
                                 method = "GET",
                                 queryParams = queryParams,
                                 headerParams = headerParams,
                                 body = body,
                                 ...)

        if (httr::status_code(response) < 200 || httr::status_code(response) > 299) {
            self$handleError(response)
        } else {
            ## API call result is a 'map container' and will be parsed to list 
            result <- httr::content(response, simplifyVector=T)
            Response$new(result, response)
        }        
    },
    # '@name get_settings1
    # '@title Get the value of an NBA setting
    # '@description All settings can be queried with /metadata/getSettings
    # '@return \code{ Specimen }
    # '@param ...; additional parameters passed to httr::GET or httr::POST
    get_settings1 = function(name=NULL, ...){
        headerParams <- character()
        queryParams <- list()
        urlPath <- "/geo/metadata/getSetting/{name}"
        if (!missing(`name`)) {
            urlPath <- gsub(paste0("\\{", "name", "\\}"), `name`, urlPath)
        }

        response <- self$callApi(url = paste0(self$basePath, urlPath),
                                 method = "GET",
                                 queryParams = queryParams,
                                 headerParams = headerParams,
                                 body = body,
                                 ...)

        if (httr::status_code(response) < 200 || httr::status_code(response) > 299) {
            self$handleError(response)
        } else {
            ## API call result is object is model class
            returnObject <- Specimen$new()
            ## API call result is QueryResult, list items must be mapped to model class
            result <- returnObject$fromList(httr::content(response), typeMapping=list(item=self$getBaseDataType()))
            Response$new(result, response)
        }        
    },
    # '@name is_operator_allowed
    # '@title Checks if a given operator is allowed for a given field
    # '@description See also metadata/getFieldInfo
    # '@return \code{ Specimen }
    # '@param ...; additional parameters passed to httr::GET or httr::POST
    is_operator_allowed = function(field=NULL, operator=NULL, ...){
        headerParams <- character()
        queryParams <- list()
        urlPath <- "/geo/metadata/isOperatorAllowed/{field}/{operator}"
        if (!missing(`field`)) {
            urlPath <- gsub(paste0("\\{", "field", "\\}"), `field`, urlPath)
        }

        if (!missing(`operator`)) {
            urlPath <- gsub(paste0("\\{", "operator", "\\}"), `operator`, urlPath)
        }

        response <- self$callApi(url = paste0(self$basePath, urlPath),
                                 method = "GET",
                                 queryParams = queryParams,
                                 headerParams = headerParams,
                                 body = body,
                                 ...)

        if (httr::status_code(response) < 200 || httr::status_code(response) > 299) {
            self$handleError(response)
        } else {
            ## API call result is a 'map container' and will be parsed to list 
            result <- httr::content(response, simplifyVector=T)
            Response$new(result, response)
        }        
    },
    # '@name query_http_get
    # '@title Query for geo areas
    # '@description Query on searchable fields to retrieve matching geo areas
    # '@return \code{ QueryResult }
    # '@param locality: character; Example query param
    # '@param ...; additional parameters passed to httr::GET or httr::POST
    query_http_get = function(locality=NULL, queryParams=list(), ...){
        headerParams <- character()
        if (!is.null(querySpec) & length(queryParams) > 0) {
            stop("QuerySpec object cannot be combined with parameters passed via queryParams argument.")
        }
            
        if (!missing(`locality`)) {
          ## querySpec can be either JSON string or object of type QuerySpec. 
          param <- ifelse(typeof(`locality`) == "environment", `locality`$toJSONString(), `locality`)    
          queryParams['locality'] <- param
        }
        ## querySpec parameter has underscore in NBA, omitted in function argument for convenience
        names(queryParams) <- gsub("querySpec", "_querySpec", names(queryParams))

        urlPath <- "/geo/query"
        response <- self$callApi(url = paste0(self$basePath, urlPath),
                                 method = "GET",
                                 queryParams = queryParams,
                                 headerParams = headerParams,
                                 body = body,
                                 ...)

        if (httr::status_code(response) < 200 || httr::status_code(response) > 299) {
            self$handleError(response)
        } else {
            ## API call result is object is model class
            returnObject <- QueryResult$new()
            ## API call result is QueryResult, list items must be mapped to model class
            result <- returnObject$fromList(httr::content(response), typeMapping=list(item=self$getBaseDataType()))
            Response$new(result, response)
        }        
    },
    # '@name query_http_post_form
    # '@title Query for geo areas
    # '@description Query on searchable fields to retrieve matching geo areas
    # '@return \code{ QueryResult }
    # '@param locality: character; Example query param
    # '@param ...; additional parameters passed to httr::GET or httr::POST
    query_http_post_form = function(locality=NULL, queryParams=list(), ...){
        headerParams <- character()
        if (!is.null(querySpec) & length(queryParams) > 0) {
            stop("QuerySpec object cannot be combined with parameters passed via queryParams argument.")
        }
            
        if (!missing(`locality`)) {
          ## querySpec can be either JSON string or object of type QuerySpec. 
          param <- ifelse(typeof(`locality`) == "environment", `locality`$toJSONString(), `locality`)    
          queryParams['locality'] <- param
        }
        ## querySpec parameter has underscore in NBA, omitted in function argument for convenience
        names(queryParams) <- gsub("querySpec", "_querySpec", names(queryParams))

        urlPath <- "/geo/query"
        response <- self$callApi(url = paste0(self$basePath, urlPath),
                                 method = "POST",
                                 queryParams = queryParams,
                                 headerParams = headerParams,
                                 body = body,
                                 ...)

        if (httr::status_code(response) < 200 || httr::status_code(response) > 299) {
            self$handleError(response)
        } else {
            ## API call result is object is model class
            returnObject <- QueryResult$new()
            ## API call result is QueryResult, list items must be mapped to model class
            result <- returnObject$fromList(httr::content(response), typeMapping=list(item=self$getBaseDataType()))
            Response$new(result, response)
        }        
    }
  )
)

