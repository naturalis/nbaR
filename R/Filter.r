# Netherlands Biodiversity Api
#
# Access to the digitised Natural History collection at the Naturalis Biodiversity Center
#
# OpenAPI spec version: v2
# Contact: support@naturalis.nl
# Generated by: https://github.com/swagger-api/swagger-codegen.git


#' Filter Class
#'
#' @field acceptRegexp 
#' @field rejectRegexp 
#' @field acceptValues 
#' @field rejectValues 
#'
#' @importFrom R6 R6Class
#' @importFrom jsonlite fromJSON toJSON
#' @export
Filter <- R6::R6Class(
  'Filter',
  public = list(
    `acceptRegexp` = NULL,
    `rejectRegexp` = NULL,
    `acceptValues` = NULL,
    `rejectValues` = NULL,
    initialize = function(`acceptRegexp`, `rejectRegexp`, `acceptValues`, `rejectValues`){
      if (!missing(`acceptRegexp`)) {
        stopifnot(is.character(`acceptRegexp`), length(`acceptRegexp`) == 1)
        self[['acceptRegexp']] <- `acceptRegexp`
      }
      if (!missing(`rejectRegexp`)) {
        stopifnot(is.character(`rejectRegexp`), length(`rejectRegexp`) == 1)
        self[['rejectRegexp']] <- `rejectRegexp`
      }
      if (!missing(`acceptValues`)) {
        stopifnot(is.list(`acceptValues`), length(`acceptValues`) != 0)
        lapply(`acceptValues`, function(x) stopifnot(is.character(x)))
        self[['acceptValues']] <- `acceptValues`
      }
      if (!missing(`rejectValues`)) {
        stopifnot(is.list(`rejectValues`), length(`rejectValues`) != 0)
        lapply(`rejectValues`, function(x) stopifnot(is.character(x)))
        self[['rejectValues']] <- `rejectValues`
      }
    },

    toList = function() {
      FilterList <- list()
        if (!is.null(self[['acceptRegexp']])) {
        FilterList[['acceptRegexp']] <- self[['acceptRegexp']]
      }
        if (!is.null(self[['rejectRegexp']])) {
        FilterList[['rejectRegexp']] <- self[['rejectRegexp']]
      }
        if (!is.null(self[['acceptValues']])) {
        FilterList[['acceptValues']] <- self[['acceptValues']]
      }
        if (!is.null(self[['rejectValues']])) {
        FilterList[['rejectValues']] <- self[['rejectValues']]
      }
      ## omit empty nested lists in returned list
      FilterList[sapply(FilterList, length) > 0]
      },

    fromList = function(FilterList, typeMapping=NULL) {
      if (is.null(typeMapping[['acceptRegexp']])) {
          self[['acceptRegexp']] <- FilterList[['acceptRegexp']]
      } else {
          obj <- eval(parse(text=paste0(typeMapping[['acceptRegexp']], "$new()")))
          self[['acceptRegexp']] <- obj$fromList(FilterList[['acceptRegexp']], typeMapping=typeMapping)
      }
      if (is.null(typeMapping[['rejectRegexp']])) {
          self[['rejectRegexp']] <- FilterList[['rejectRegexp']]
      } else {
          obj <- eval(parse(text=paste0(typeMapping[['rejectRegexp']], "$new()")))
          self[['rejectRegexp']] <- obj$fromList(FilterList[['rejectRegexp']], typeMapping=typeMapping)
      }
      if (is.null(typeMapping[['acceptValues']])) {
          self[['acceptValues']] <- FilterList[['acceptValues']]
      } else {
          obj <- eval(parse(text=paste0(typeMapping[['acceptValues']], "$new()")))
          self[['acceptValues']] <- obj$fromList(FilterList[['acceptValues']], typeMapping=typeMapping)
      }
      if (is.null(typeMapping[['rejectValues']])) {
          self[['rejectValues']] <- FilterList[['rejectValues']]
      } else {
          obj <- eval(parse(text=paste0(typeMapping[['rejectValues']], "$new()")))
          self[['rejectValues']] <- obj$fromList(FilterList[['rejectValues']], typeMapping=typeMapping)
      }
      invisible(self)
    },
    
    toJSONString = function(pretty=T) {
      jsonlite::toJSON(self$toList(), simplifyVector=T, auto_unbox=T, pretty=pretty)
    },

    fromJSONString = function(FilterJson, typeMapping=NULL) {
      FilterList <- jsonlite::fromJSON(FilterJson, simplifyVector=F)
      if (is.null(typeMapping[['acceptRegexp']])) {
          self[['acceptRegexp']] <- FilterList[['acceptRegexp']]
      } else {
          obj <- eval(parse(text=paste0(typeMapping[['acceptRegexp']], "$new()")))
          self[['acceptRegexp']] <- obj$fromJSONString(jsonlite::toJSON(FilterList[['acceptRegexp']], auto_unbox = TRUE), typeMapping=typeMapping)
      }
      if (is.null(typeMapping[['rejectRegexp']])) {
          self[['rejectRegexp']] <- FilterList[['rejectRegexp']]
      } else {
          obj <- eval(parse(text=paste0(typeMapping[['rejectRegexp']], "$new()")))
          self[['rejectRegexp']] <- obj$fromJSONString(jsonlite::toJSON(FilterList[['rejectRegexp']], auto_unbox = TRUE), typeMapping=typeMapping)
      }
      if (is.null(typeMapping[['acceptValues']])) {
          self[['acceptValues']] <- FilterList[['acceptValues']]
      } else {
          obj <- eval(parse(text=paste0(typeMapping[['acceptValues']], "$new()")))
          self[['acceptValues']] <- obj$fromJSONString(jsonlite::toJSON(FilterList[['acceptValues']], auto_unbox = TRUE), typeMapping=typeMapping)
      }
      if (is.null(typeMapping[['rejectValues']])) {
          self[['rejectValues']] <- FilterList[['rejectValues']]
      } else {
          obj <- eval(parse(text=paste0(typeMapping[['rejectValues']], "$new()")))
          self[['rejectValues']] <- obj$fromJSONString(jsonlite::toJSON(FilterList[['rejectValues']], auto_unbox = TRUE), typeMapping=typeMapping)
      }
      invisible(self)
    }
  )
)
