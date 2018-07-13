# Netherlands Biodiversity Api
#
# Access to the digitised Natural History collection at the Naturalis Biodiversity Center
#
# OpenAPI spec version: v2
# Contact: support@naturalis.nl
# Generated by: https://github.com/swagger-api/swagger-codegen.git


#' ScientificName Class
#'
#' @field fullScientificName 
#' @field taxonomicStatus 
#' @field genusOrMonomial 
#' @field subgenus 
#' @field specificEpithet 
#' @field infraspecificEpithet 
#' @field infraspecificMarker 
#' @field nameAddendum 
#' @field authorshipVerbatim 
#' @field author 
#' @field year 
#' @field scientificNameGroup 
#' @field references 
#' @field experts 
#'
#' @importFrom R6 R6Class
#' @importFrom jsonlite fromJSON toJSON
#' @export
ScientificName <- R6::R6Class(
  'ScientificName',
  public = list(
    `fullScientificName` = NULL,
    `taxonomicStatus` = NULL,
    `genusOrMonomial` = NULL,
    `subgenus` = NULL,
    `specificEpithet` = NULL,
    `infraspecificEpithet` = NULL,
    `infraspecificMarker` = NULL,
    `nameAddendum` = NULL,
    `authorshipVerbatim` = NULL,
    `author` = NULL,
    `year` = NULL,
    `scientificNameGroup` = NULL,
    `references` = NULL,
    `experts` = NULL,
    initialize = function(`fullScientificName`, `taxonomicStatus`, `genusOrMonomial`, `subgenus`, `specificEpithet`, `infraspecificEpithet`, `infraspecificMarker`, `nameAddendum`, `authorshipVerbatim`, `author`, `year`, `scientificNameGroup`, `references`, `experts`){
      if (!missing(`fullScientificName`)) {
        stopifnot(is.character(`fullScientificName`), length(`fullScientificName`) == 1)
        self[['fullScientificName']] <- `fullScientificName`
      }
      if (!missing(`taxonomicStatus`)) {
        stopifnot(is.character(`taxonomicStatus`), length(`taxonomicStatus`) == 1)
        self[['taxonomicStatus']] <- `taxonomicStatus`
      }
      if (!missing(`genusOrMonomial`)) {
        stopifnot(is.character(`genusOrMonomial`), length(`genusOrMonomial`) == 1)
        self[['genusOrMonomial']] <- `genusOrMonomial`
      }
      if (!missing(`subgenus`)) {
        stopifnot(is.character(`subgenus`), length(`subgenus`) == 1)
        self[['subgenus']] <- `subgenus`
      }
      if (!missing(`specificEpithet`)) {
        stopifnot(is.character(`specificEpithet`), length(`specificEpithet`) == 1)
        self[['specificEpithet']] <- `specificEpithet`
      }
      if (!missing(`infraspecificEpithet`)) {
        stopifnot(is.character(`infraspecificEpithet`), length(`infraspecificEpithet`) == 1)
        self[['infraspecificEpithet']] <- `infraspecificEpithet`
      }
      if (!missing(`infraspecificMarker`)) {
        stopifnot(is.character(`infraspecificMarker`), length(`infraspecificMarker`) == 1)
        self[['infraspecificMarker']] <- `infraspecificMarker`
      }
      if (!missing(`nameAddendum`)) {
        stopifnot(is.character(`nameAddendum`), length(`nameAddendum`) == 1)
        self[['nameAddendum']] <- `nameAddendum`
      }
      if (!missing(`authorshipVerbatim`)) {
        stopifnot(is.character(`authorshipVerbatim`), length(`authorshipVerbatim`) == 1)
        self[['authorshipVerbatim']] <- `authorshipVerbatim`
      }
      if (!missing(`author`)) {
        stopifnot(is.character(`author`), length(`author`) == 1)
        self[['author']] <- `author`
      }
      if (!missing(`year`)) {
        stopifnot(is.character(`year`), length(`year`) == 1)
        self[['year']] <- `year`
      }
      if (!missing(`scientificNameGroup`)) {
        stopifnot(is.character(`scientificNameGroup`), length(`scientificNameGroup`) == 1)
        self[['scientificNameGroup']] <- `scientificNameGroup`
      }
      if (!missing(`references`)) {
        stopifnot(is.list(`references`), length(`references`) != 0)
        lapply(`references`, function(x) stopifnot(R6::is.R6(x)))
        self[['references']] <- `references`
      }
      if (!missing(`experts`)) {
        stopifnot(is.list(`experts`), length(`experts`) != 0)
        lapply(`experts`, function(x) stopifnot(R6::is.R6(x)))
        self[['experts']] <- `experts`
      }
    },

    toList = function() {
      ScientificNameList <- list()
        if (!is.null(self[['fullScientificName']])) {
        ScientificNameList[['fullScientificName']] <- self[['fullScientificName']]
      }
        if (!is.null(self[['taxonomicStatus']])) {
        ScientificNameList[['taxonomicStatus']] <- self[['taxonomicStatus']]
      }
        if (!is.null(self[['genusOrMonomial']])) {
        ScientificNameList[['genusOrMonomial']] <- self[['genusOrMonomial']]
      }
        if (!is.null(self[['subgenus']])) {
        ScientificNameList[['subgenus']] <- self[['subgenus']]
      }
        if (!is.null(self[['specificEpithet']])) {
        ScientificNameList[['specificEpithet']] <- self[['specificEpithet']]
      }
        if (!is.null(self[['infraspecificEpithet']])) {
        ScientificNameList[['infraspecificEpithet']] <- self[['infraspecificEpithet']]
      }
        if (!is.null(self[['infraspecificMarker']])) {
        ScientificNameList[['infraspecificMarker']] <- self[['infraspecificMarker']]
      }
        if (!is.null(self[['nameAddendum']])) {
        ScientificNameList[['nameAddendum']] <- self[['nameAddendum']]
      }
        if (!is.null(self[['authorshipVerbatim']])) {
        ScientificNameList[['authorshipVerbatim']] <- self[['authorshipVerbatim']]
      }
        if (!is.null(self[['author']])) {
        ScientificNameList[['author']] <- self[['author']]
      }
        if (!is.null(self[['year']])) {
        ScientificNameList[['year']] <- self[['year']]
      }
        if (!is.null(self[['scientificNameGroup']])) {
        ScientificNameList[['scientificNameGroup']] <- self[['scientificNameGroup']]
      }
        if (!is.null(self[['references']])) {
        ScientificNameList[['references']] <- lapply(self[['references']], function(x) x$toList())
      }
        if (!is.null(self[['experts']])) {
        ScientificNameList[['experts']] <- lapply(self[['experts']], function(x) x$toList())
      }
      ## omit empty nested lists in returned list
      ScientificNameList[sapply(ScientificNameList, length) > 0]
      },

    fromList = function(ScientificNameList, typeMapping=NULL) {
      if (is.null(typeMapping[['fullScientificName']])) {
          self[['fullScientificName']] <- ScientificNameList[['fullScientificName']]
      } else {
          obj <- eval(parse(text=paste0(typeMapping[['fullScientificName']], "$new()")))
          self[['fullScientificName']] <- obj$fromList(ScientificNameList[['fullScientificName']], typeMapping=typeMapping)
      }
      if (is.null(typeMapping[['taxonomicStatus']])) {
          self[['taxonomicStatus']] <- ScientificNameList[['taxonomicStatus']]
      } else {
          obj <- eval(parse(text=paste0(typeMapping[['taxonomicStatus']], "$new()")))
          self[['taxonomicStatus']] <- obj$fromList(ScientificNameList[['taxonomicStatus']], typeMapping=typeMapping)
      }
      if (is.null(typeMapping[['genusOrMonomial']])) {
          self[['genusOrMonomial']] <- ScientificNameList[['genusOrMonomial']]
      } else {
          obj <- eval(parse(text=paste0(typeMapping[['genusOrMonomial']], "$new()")))
          self[['genusOrMonomial']] <- obj$fromList(ScientificNameList[['genusOrMonomial']], typeMapping=typeMapping)
      }
      if (is.null(typeMapping[['subgenus']])) {
          self[['subgenus']] <- ScientificNameList[['subgenus']]
      } else {
          obj <- eval(parse(text=paste0(typeMapping[['subgenus']], "$new()")))
          self[['subgenus']] <- obj$fromList(ScientificNameList[['subgenus']], typeMapping=typeMapping)
      }
      if (is.null(typeMapping[['specificEpithet']])) {
          self[['specificEpithet']] <- ScientificNameList[['specificEpithet']]
      } else {
          obj <- eval(parse(text=paste0(typeMapping[['specificEpithet']], "$new()")))
          self[['specificEpithet']] <- obj$fromList(ScientificNameList[['specificEpithet']], typeMapping=typeMapping)
      }
      if (is.null(typeMapping[['infraspecificEpithet']])) {
          self[['infraspecificEpithet']] <- ScientificNameList[['infraspecificEpithet']]
      } else {
          obj <- eval(parse(text=paste0(typeMapping[['infraspecificEpithet']], "$new()")))
          self[['infraspecificEpithet']] <- obj$fromList(ScientificNameList[['infraspecificEpithet']], typeMapping=typeMapping)
      }
      if (is.null(typeMapping[['infraspecificMarker']])) {
          self[['infraspecificMarker']] <- ScientificNameList[['infraspecificMarker']]
      } else {
          obj <- eval(parse(text=paste0(typeMapping[['infraspecificMarker']], "$new()")))
          self[['infraspecificMarker']] <- obj$fromList(ScientificNameList[['infraspecificMarker']], typeMapping=typeMapping)
      }
      if (is.null(typeMapping[['nameAddendum']])) {
          self[['nameAddendum']] <- ScientificNameList[['nameAddendum']]
      } else {
          obj <- eval(parse(text=paste0(typeMapping[['nameAddendum']], "$new()")))
          self[['nameAddendum']] <- obj$fromList(ScientificNameList[['nameAddendum']], typeMapping=typeMapping)
      }
      if (is.null(typeMapping[['authorshipVerbatim']])) {
          self[['authorshipVerbatim']] <- ScientificNameList[['authorshipVerbatim']]
      } else {
          obj <- eval(parse(text=paste0(typeMapping[['authorshipVerbatim']], "$new()")))
          self[['authorshipVerbatim']] <- obj$fromList(ScientificNameList[['authorshipVerbatim']], typeMapping=typeMapping)
      }
      if (is.null(typeMapping[['author']])) {
          self[['author']] <- ScientificNameList[['author']]
      } else {
          obj <- eval(parse(text=paste0(typeMapping[['author']], "$new()")))
          self[['author']] <- obj$fromList(ScientificNameList[['author']], typeMapping=typeMapping)
      }
      if (is.null(typeMapping[['year']])) {
          self[['year']] <- ScientificNameList[['year']]
      } else {
          obj <- eval(parse(text=paste0(typeMapping[['year']], "$new()")))
          self[['year']] <- obj$fromList(ScientificNameList[['year']], typeMapping=typeMapping)
      }
      if (is.null(typeMapping[['scientificNameGroup']])) {
          self[['scientificNameGroup']] <- ScientificNameList[['scientificNameGroup']]
      } else {
          obj <- eval(parse(text=paste0(typeMapping[['scientificNameGroup']], "$new()")))
          self[['scientificNameGroup']] <- obj$fromList(ScientificNameList[['scientificNameGroup']], typeMapping=typeMapping)
      }
      self[['references']] <- lapply(ScientificNameList[['references']],
                                       function(x) Reference$new()$fromList(x, typeMapping=typeMapping))
      self[['experts']] <- lapply(ScientificNameList[['experts']],
                                       function(x) Expert$new()$fromList(x, typeMapping=typeMapping))
      invisible(self)
    },
    
    toJSONString = function(pretty=T) {
      jsonlite::toJSON(self$toList(), simplifyVector=T, auto_unbox=T, pretty=pretty)
    },

    fromJSONString = function(ScientificNameJson, typeMapping=NULL) {
      ScientificNameList <- jsonlite::fromJSON(ScientificNameJson, simplifyVector=F)
      if (is.null(typeMapping[['fullScientificName']])) {
          self[['fullScientificName']] <- ScientificNameList[['fullScientificName']]
      } else {
          obj <- eval(parse(text=paste0(typeMapping[['fullScientificName']], "$new()")))
          self[['fullScientificName']] <- obj$fromJSONString(jsonlite::toJSON(ScientificNameList[['fullScientificName']], auto_unbox = TRUE), typeMapping=typeMapping)
      }
      if (is.null(typeMapping[['taxonomicStatus']])) {
          self[['taxonomicStatus']] <- ScientificNameList[['taxonomicStatus']]
      } else {
          obj <- eval(parse(text=paste0(typeMapping[['taxonomicStatus']], "$new()")))
          self[['taxonomicStatus']] <- obj$fromJSONString(jsonlite::toJSON(ScientificNameList[['taxonomicStatus']], auto_unbox = TRUE), typeMapping=typeMapping)
      }
      if (is.null(typeMapping[['genusOrMonomial']])) {
          self[['genusOrMonomial']] <- ScientificNameList[['genusOrMonomial']]
      } else {
          obj <- eval(parse(text=paste0(typeMapping[['genusOrMonomial']], "$new()")))
          self[['genusOrMonomial']] <- obj$fromJSONString(jsonlite::toJSON(ScientificNameList[['genusOrMonomial']], auto_unbox = TRUE), typeMapping=typeMapping)
      }
      if (is.null(typeMapping[['subgenus']])) {
          self[['subgenus']] <- ScientificNameList[['subgenus']]
      } else {
          obj <- eval(parse(text=paste0(typeMapping[['subgenus']], "$new()")))
          self[['subgenus']] <- obj$fromJSONString(jsonlite::toJSON(ScientificNameList[['subgenus']], auto_unbox = TRUE), typeMapping=typeMapping)
      }
      if (is.null(typeMapping[['specificEpithet']])) {
          self[['specificEpithet']] <- ScientificNameList[['specificEpithet']]
      } else {
          obj <- eval(parse(text=paste0(typeMapping[['specificEpithet']], "$new()")))
          self[['specificEpithet']] <- obj$fromJSONString(jsonlite::toJSON(ScientificNameList[['specificEpithet']], auto_unbox = TRUE), typeMapping=typeMapping)
      }
      if (is.null(typeMapping[['infraspecificEpithet']])) {
          self[['infraspecificEpithet']] <- ScientificNameList[['infraspecificEpithet']]
      } else {
          obj <- eval(parse(text=paste0(typeMapping[['infraspecificEpithet']], "$new()")))
          self[['infraspecificEpithet']] <- obj$fromJSONString(jsonlite::toJSON(ScientificNameList[['infraspecificEpithet']], auto_unbox = TRUE), typeMapping=typeMapping)
      }
      if (is.null(typeMapping[['infraspecificMarker']])) {
          self[['infraspecificMarker']] <- ScientificNameList[['infraspecificMarker']]
      } else {
          obj <- eval(parse(text=paste0(typeMapping[['infraspecificMarker']], "$new()")))
          self[['infraspecificMarker']] <- obj$fromJSONString(jsonlite::toJSON(ScientificNameList[['infraspecificMarker']], auto_unbox = TRUE), typeMapping=typeMapping)
      }
      if (is.null(typeMapping[['nameAddendum']])) {
          self[['nameAddendum']] <- ScientificNameList[['nameAddendum']]
      } else {
          obj <- eval(parse(text=paste0(typeMapping[['nameAddendum']], "$new()")))
          self[['nameAddendum']] <- obj$fromJSONString(jsonlite::toJSON(ScientificNameList[['nameAddendum']], auto_unbox = TRUE), typeMapping=typeMapping)
      }
      if (is.null(typeMapping[['authorshipVerbatim']])) {
          self[['authorshipVerbatim']] <- ScientificNameList[['authorshipVerbatim']]
      } else {
          obj <- eval(parse(text=paste0(typeMapping[['authorshipVerbatim']], "$new()")))
          self[['authorshipVerbatim']] <- obj$fromJSONString(jsonlite::toJSON(ScientificNameList[['authorshipVerbatim']], auto_unbox = TRUE), typeMapping=typeMapping)
      }
      if (is.null(typeMapping[['author']])) {
          self[['author']] <- ScientificNameList[['author']]
      } else {
          obj <- eval(parse(text=paste0(typeMapping[['author']], "$new()")))
          self[['author']] <- obj$fromJSONString(jsonlite::toJSON(ScientificNameList[['author']], auto_unbox = TRUE), typeMapping=typeMapping)
      }
      if (is.null(typeMapping[['year']])) {
          self[['year']] <- ScientificNameList[['year']]
      } else {
          obj <- eval(parse(text=paste0(typeMapping[['year']], "$new()")))
          self[['year']] <- obj$fromJSONString(jsonlite::toJSON(ScientificNameList[['year']], auto_unbox = TRUE), typeMapping=typeMapping)
      }
      if (is.null(typeMapping[['scientificNameGroup']])) {
          self[['scientificNameGroup']] <- ScientificNameList[['scientificNameGroup']]
      } else {
          obj <- eval(parse(text=paste0(typeMapping[['scientificNameGroup']], "$new()")))
          self[['scientificNameGroup']] <- obj$fromJSONString(jsonlite::toJSON(ScientificNameList[['scientificNameGroup']], auto_unbox = TRUE), typeMapping=typeMapping)
      }
      self[['references']] <- lapply(ScientificNameList[['references']],
                                        function(x) Reference$new()$fromJSONString(jsonlite::toJSON(x, auto_unbox = TRUE), typeMapping=typeMapping))
      self[['experts']] <- lapply(ScientificNameList[['experts']],
                                        function(x) Expert$new()$fromJSONString(jsonlite::toJSON(x, auto_unbox = TRUE), typeMapping=typeMapping))
      invisible(self)
    }
  )
)
