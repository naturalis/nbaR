# Netherlands Biodiversity Api
#
# Access to the digitised Natural History collection at the Naturalis Biodiversity Center
#
# OpenAPI spec version: v2
# Contact: support@naturalis.nl
# Generated by: https://github.com/swagger-api/swagger-codegen.git


#' SummaryVernacularName Class
#'
#' @field name 
#' @field language 
#'
#' @importFrom R6 R6Class
#' @importFrom jsonlite fromJSON toJSON
#' @export
SummaryVernacularName <- R6::R6Class(
  'SummaryVernacularName',
  public = list(
    `name` = NULL,
    `language` = NULL,
    initialize = function(`name`, `language`){
      if (!missing(`name`)) {
        stopifnot(is.character(`name`), length(`name`) == 1)
        self[['name']] <- `name`
      }
      if (!missing(`language`)) {
        stopifnot(is.character(`language`), length(`language`) == 1)
        self[['language']] <- `language`
      }
    },

    toList = function() {
      SummaryVernacularNameList <- list()
        if (!is.null(self[['name']])) {
        SummaryVernacularNameList[['name']] <- self[['name']]
      }
        if (!is.null(self[['language']])) {
        SummaryVernacularNameList[['language']] <- self[['language']]
      }
      ## omit empty nested lists in returned list
      SummaryVernacularNameList[sapply(SummaryVernacularNameList, length) > 0]
      },

    fromList = function(SummaryVernacularNameList, typeMapping=NULL) {
      if (is.null(typeMapping[['name']])) {
          self[['name']] <- SummaryVernacularNameList[['name']]
      } else {
          obj <- eval(parse(text=paste0(typeMapping[['name']], "$new()")))
          self[['name']] <- obj$fromList(SummaryVernacularNameList[['name']], typeMapping=typeMapping)
      }
      if (is.null(typeMapping[['language']])) {
          self[['language']] <- SummaryVernacularNameList[['language']]
      } else {
          obj <- eval(parse(text=paste0(typeMapping[['language']], "$new()")))
          self[['language']] <- obj$fromList(SummaryVernacularNameList[['language']], typeMapping=typeMapping)
      }
      invisible(self)
    },
    
    toJSONString = function(pretty=T) {
      jsonlite::toJSON(self$toList(), simplifyVector=T, auto_unbox=T, pretty=pretty)
    },

    fromJSONString = function(SummaryVernacularNameJson, typeMapping=NULL) {
      SummaryVernacularNameList <- jsonlite::fromJSON(SummaryVernacularNameJson, simplifyVector=F)
      if (is.null(typeMapping[['name']])) {
          self[['name']] <- SummaryVernacularNameList[['name']]
      } else {
          obj <- eval(parse(text=paste0(typeMapping[['name']], "$new()")))
          self[['name']] <- obj$fromJSONString(jsonlite::toJSON(SummaryVernacularNameList[['name']], auto_unbox = TRUE), typeMapping=typeMapping)
      }
      if (is.null(typeMapping[['language']])) {
          self[['language']] <- SummaryVernacularNameList[['language']]
      } else {
          obj <- eval(parse(text=paste0(typeMapping[['language']], "$new()")))
          self[['language']] <- obj$fromJSONString(jsonlite::toJSON(SummaryVernacularNameList[['language']], auto_unbox = TRUE), typeMapping=typeMapping)
      }
      invisible(self)
    }
  )
)
