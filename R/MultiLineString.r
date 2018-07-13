# Netherlands Biodiversity Api
#
# Access to the digitised Natural History collection at the Naturalis Biodiversity Center
#
# OpenAPI spec version: v2
# Contact: support@naturalis.nl
# Generated by: https://github.com/swagger-api/swagger-codegen.git


#' MultiLineString Class
#'
#' @field crs 
#' @field bbox 
#' @field coordinates 
#'
#' @importFrom R6 R6Class
#' @importFrom jsonlite fromJSON toJSON
#' @export
MultiLineString <- R6::R6Class(
  'MultiLineString',
  public = list(
    `crs` = NULL,
    `bbox` = NULL,
    `coordinates` = NULL,
    initialize = function(`crs`, `bbox`, `coordinates`){
      if (!missing(`crs`)) {
        stopifnot(R6::is.R6(`crs`))
        self[['crs']] <- `crs`
      }
      if (!missing(`bbox`)) {
        stopifnot(is.list(`bbox`), length(`bbox`) != 0)
        lapply(`bbox`, function(x) stopifnot(is.character(x)))
        self[['bbox']] <- `bbox`
      }
      if (!missing(`coordinates`)) {
        stopifnot(is.list(`coordinates`), length(`coordinates`) != 0)
        lapply(`coordinates`, function(x) stopifnot(is.character(x)))
        self[['coordinates']] <- `coordinates`
      }
    },

    toList = function() {
      MultiLineStringList <- list()
        if (!is.null(self[['crs']])) {
        MultiLineStringList[['crs']] <- self[['crs']]$toList()
      }
        if (!is.null(self[['bbox']])) {
        MultiLineStringList[['bbox']] <- self[['bbox']]
      }
        if (!is.null(self[['coordinates']])) {
        MultiLineStringList[['coordinates']] <- self[['coordinates']]
      }
      ## omit empty nested lists in returned list
      MultiLineStringList[sapply(MultiLineStringList, length) > 0]
      },

    fromList = function(MultiLineStringList, typeMapping=NULL) {
      if (is.null(typeMapping[['crs']])) {
          self[['crs']] <- Crs$new()$fromList(MultiLineStringList[['crs']], typeMapping=typeMapping) 
      } else {
          obj <- eval(parse(text=paste0(typeMapping[['crs']], "$new()")))
          self[['crs']] <- obj$fromList(MultiLineStringList[['crs']], typeMapping=typeMapping)
      }
      if (is.null(typeMapping[['bbox']])) {
          self[['bbox']] <- MultiLineStringList[['bbox']]
      } else {
          obj <- eval(parse(text=paste0(typeMapping[['bbox']], "$new()")))
          self[['bbox']] <- obj$fromList(MultiLineStringList[['bbox']], typeMapping=typeMapping)
      }
      if (is.null(typeMapping[['coordinates']])) {
          self[['coordinates']] <- MultiLineStringList[['coordinates']]
      } else {
          obj <- eval(parse(text=paste0(typeMapping[['coordinates']], "$new()")))
          self[['coordinates']] <- obj$fromList(MultiLineStringList[['coordinates']], typeMapping=typeMapping)
      }
      invisible(self)
    },
    
    toJSONString = function(pretty=T) {
      jsonlite::toJSON(self$toList(), simplifyVector=T, auto_unbox=T, pretty=pretty)
    },

    fromJSONString = function(MultiLineStringJson, typeMapping=NULL) {
      MultiLineStringList <- jsonlite::fromJSON(MultiLineStringJson, simplifyVector=F)
      if (is.null(typeMapping[['crs']])) {
          self[['crs']] <- Crs$new()$fromJSONString(jsonlite::toJSON(MultiLineStringList[['crs']], auto_unbox = TRUE), typeMapping=typeMapping) 
      } else {
          obj <- eval(parse(text=paste0(typeMapping[['crs']], "$new()")))
          self[['crs']] <- obj$fromJSONString(jsonlite::toJSON(MultiLineStringList[['crs']], auto_unbox = TRUE), typeMapping=typeMapping)
      }
      if (is.null(typeMapping[['bbox']])) {
          self[['bbox']] <- MultiLineStringList[['bbox']]
      } else {
          obj <- eval(parse(text=paste0(typeMapping[['bbox']], "$new()")))
          self[['bbox']] <- obj$fromJSONString(jsonlite::toJSON(MultiLineStringList[['bbox']], auto_unbox = TRUE), typeMapping=typeMapping)
      }
      if (is.null(typeMapping[['coordinates']])) {
          self[['coordinates']] <- MultiLineStringList[['coordinates']]
      } else {
          obj <- eval(parse(text=paste0(typeMapping[['coordinates']], "$new()")))
          self[['coordinates']] <- obj$fromJSONString(jsonlite::toJSON(MultiLineStringList[['coordinates']], auto_unbox = TRUE), typeMapping=typeMapping)
      }
      invisible(self)
    }
  )
)
