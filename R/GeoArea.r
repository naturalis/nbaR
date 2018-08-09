# Netherlands Biodiversity API
#
# Access to the digitised Natural History collection at the Naturalis Biodiversity Center
#
# OpenAPI spec version: v2
# Contact: support@naturalis.nl
# Generated by: https://github.com/swagger-api/swagger-codegen.git


#' GeoArea Class
#'
#' @field sourceSystem
#' @field sourceSystemId
#' @field recordURI
#' @field id
#' @field areaType
#' @field locality
#' @field shape
#' @field source
#' @field isoCode
#' @field countryNL
#'
#' @importFrom R6 R6Class
#' @importFrom jsonlite fromJSON toJSON
#' @export
GeoArea <- R6::R6Class(
  "GeoArea",
  public = list(
    `sourceSystem` = NULL,
    `sourceSystemId` = NULL,
    `recordURI` = NULL,
    `id` = NULL,
    `areaType` = NULL,
    `locality` = NULL,
    `shape` = NULL,
    `source` = NULL,
    `isoCode` = NULL,
    `countryNL` = NULL,
    initialize = function(
                              `sourceSystem`,
                              `sourceSystemId`,
                              `recordURI`,
                              `id`,
                              `areaType`,
                              `locality`,
                              `shape`,
                              `source`,
                              `isoCode`,
                              `countryNL`) {
      if (!missing(`sourceSystem`)) {
        stopifnot(R6::is.R6(`sourceSystem`))
        self[["sourceSystem"]] <- `sourceSystem`
      }
      if (!missing(`sourceSystemId`)) {
        stopifnot(
          is.character(`sourceSystemId`),
          length(`sourceSystemId`) == 1
        )
        self[["sourceSystemId"]] <- `sourceSystemId`
      }
      if (!missing(`recordURI`)) {
        stopifnot(
          is.character(`recordURI`),
          length(`recordURI`) == 1
        )
        self[["recordURI"]] <- `recordURI`
      }
      if (!missing(`id`)) {
        stopifnot(
          is.character(`id`),
          length(`id`) == 1
        )
        self[["id"]] <- `id`
      }
      if (!missing(`areaType`)) {
        stopifnot(
          is.character(`areaType`),
          length(`areaType`) == 1
        )
        self[["areaType"]] <- `areaType`
      }
      if (!missing(`locality`)) {
        stopifnot(
          is.character(`locality`),
          length(`locality`) == 1
        )
        self[["locality"]] <- `locality`
      }
      if (!missing(`shape`)) {
        self[["shape"]] <- `shape`
      }
      if (!missing(`source`)) {
        stopifnot(
          is.character(`source`),
          length(`source`) == 1
        )
        self[["source"]] <- `source`
      }
      if (!missing(`isoCode`)) {
        stopifnot(
          is.character(`isoCode`),
          length(`isoCode`) == 1
        )
        self[["isoCode"]] <- `isoCode`
      }
      if (!missing(`countryNL`)) {
        stopifnot(
          is.character(`countryNL`),
          length(`countryNL`) == 1
        )
        self[["countryNL"]] <- `countryNL`
      }
    },
    toList = function() {
      GeoAreaList <- list()
      if (!is.null(self[["sourceSystem"]])) {
        GeoAreaList[["sourceSystem"]] <-
          self[["sourceSystem"]]$toList()
      }
      if (!is.null(self[["sourceSystemId"]])) {
        GeoAreaList[["sourceSystemId"]] <-
          self[["sourceSystemId"]]
      }
      if (!is.null(self[["recordURI"]])) {
        GeoAreaList[["recordURI"]] <-
          self[["recordURI"]]
      }
      if (!is.null(self[["id"]])) {
        GeoAreaList[["id"]] <-
          self[["id"]]
      }
      if (!is.null(self[["areaType"]])) {
        GeoAreaList[["areaType"]] <-
          self[["areaType"]]
      }
      if (!is.null(self[["locality"]])) {
        GeoAreaList[["locality"]] <-
          self[["locality"]]
      }
      if (!is.null(self[["shape"]])) {
        GeoAreaList[["shape"]] <-
          self[["shape"]]
      }
      if (!is.null(self[["source"]])) {
        GeoAreaList[["source"]] <-
          self[["source"]]
      }
      if (!is.null(self[["isoCode"]])) {
        GeoAreaList[["isoCode"]] <-
          self[["isoCode"]]
      }
      if (!is.null(self[["countryNL"]])) {
        GeoAreaList[["countryNL"]] <-
          self[["countryNL"]]
      }
      ## omit empty nested lists in returned list
      GeoAreaList[vapply(
        GeoAreaList,
        length,
        FUN.VALUE = integer(1)
      ) > 0]
    },
    fromList = function(GeoAreaList,
                            typeMapping = NULL) {
      if (is.null(typeMapping[["sourceSystem"]])) {
        self[["sourceSystem"]] <- SourceSystem$new()$fromList(
          GeoAreaList[["sourceSystem"]],
          typeMapping = typeMapping
        )
      } else {
        obj <- eval(parse(
          text = paste0(typeMapping[["sourceSystem"]], "$new()")
        ))
        self[["sourceSystem"]] <- obj$fromList(
          GeoAreaList[["sourceSystem"]],
          typeMapping = typeMapping
        )
      }
      if (is.null(typeMapping[["sourceSystemId"]])) {
        self[["sourceSystemId"]] <-
          GeoAreaList[["sourceSystemId"]]
      } else {
        obj <- eval(parse(
          text = paste0(typeMapping[["sourceSystemId"]], "$new()")
        ))
        self[["sourceSystemId"]] <- obj$fromList(
          GeoAreaList[["sourceSystemId"]],
          typeMapping = typeMapping
        )
      }
      if (is.null(typeMapping[["recordURI"]])) {
        self[["recordURI"]] <-
          GeoAreaList[["recordURI"]]
      } else {
        obj <- eval(parse(
          text = paste0(typeMapping[["recordURI"]], "$new()")
        ))
        self[["recordURI"]] <- obj$fromList(
          GeoAreaList[["recordURI"]],
          typeMapping = typeMapping
        )
      }
      if (is.null(typeMapping[["id"]])) {
        self[["id"]] <-
          GeoAreaList[["id"]]
      } else {
        obj <- eval(parse(
          text = paste0(typeMapping[["id"]], "$new()")
        ))
        self[["id"]] <- obj$fromList(
          GeoAreaList[["id"]],
          typeMapping = typeMapping
        )
      }
      if (is.null(typeMapping[["areaType"]])) {
        self[["areaType"]] <-
          GeoAreaList[["areaType"]]
      } else {
        obj <- eval(parse(
          text = paste0(typeMapping[["areaType"]], "$new()")
        ))
        self[["areaType"]] <- obj$fromList(
          GeoAreaList[["areaType"]],
          typeMapping = typeMapping
        )
      }
      if (is.null(typeMapping[["locality"]])) {
        self[["locality"]] <-
          GeoAreaList[["locality"]]
      } else {
        obj <- eval(parse(
          text = paste0(typeMapping[["locality"]], "$new()")
        ))
        self[["locality"]] <- obj$fromList(
          GeoAreaList[["locality"]],
          typeMapping = typeMapping
        )
      }
      if (is.null(typeMapping[["shape"]])) {
        self[["shape"]] <-
          GeoAreaList[["shape"]]
      } else {
        obj <- eval(parse(
          text = paste0(typeMapping[["shape"]], "$new()")
        ))
        self[["shape"]] <- obj$fromList(
          GeoAreaList[["shape"]],
          typeMapping = typeMapping
        )
      }
      if (is.null(typeMapping[["source"]])) {
        self[["source"]] <-
          GeoAreaList[["source"]]
      } else {
        obj <- eval(parse(
          text = paste0(typeMapping[["source"]], "$new()")
        ))
        self[["source"]] <- obj$fromList(
          GeoAreaList[["source"]],
          typeMapping = typeMapping
        )
      }
      if (is.null(typeMapping[["isoCode"]])) {
        self[["isoCode"]] <-
          GeoAreaList[["isoCode"]]
      } else {
        obj <- eval(parse(
          text = paste0(typeMapping[["isoCode"]], "$new()")
        ))
        self[["isoCode"]] <- obj$fromList(
          GeoAreaList[["isoCode"]],
          typeMapping = typeMapping
        )
      }
      if (is.null(typeMapping[["countryNL"]])) {
        self[["countryNL"]] <-
          GeoAreaList[["countryNL"]]
      } else {
        obj <- eval(parse(
          text = paste0(typeMapping[["countryNL"]], "$new()")
        ))
        self[["countryNL"]] <- obj$fromList(
          GeoAreaList[["countryNL"]],
          typeMapping = typeMapping
        )
      }
      invisible(self)
    },
    toJSONString = function(pretty = TRUE) {
      jsonlite::toJSON(
        self$toList(),
        simplifyVector = TRUE,
        auto_unbox = TRUE,
        pretty = pretty
      )
    },
    fromJSONString = function(GeoAreaJson,
                                  typeMapping = NULL) {
      GeoAreaList <- jsonlite::fromJSON(
        GeoAreaJson,
        simplifyVector = FALSE
      )
      if (is.null(typeMapping[["sourceSystem"]])) {
        self[["sourceSystem"]] <-
          SourceSystem$new()$fromJSONString(
            jsonlite::toJSON(
              GeoAreaList[["sourceSystem"]],
              auto_unbox = TRUE
            ),
            typeMapping = typeMapping
          )
      } else {
        obj <- eval(parse(
          text = paste0(typeMapping[["sourceSystem"]], "$new()")
        ))
        self[["sourceSystem"]] <- obj$fromJSONString(
          jsonlite::toJSON(
            GeoAreaList[["sourceSystem"]],
            auto_unbox = TRUE
          ),
          typeMapping = typeMapping
        )
      }
      if (is.null(typeMapping[["sourceSystemId"]])) {
        self[["sourceSystemId"]] <-
          GeoAreaList[["sourceSystemId"]]
      } else {
        obj <- eval(parse(
          text = paste0(typeMapping[["sourceSystemId"]], "$new()")
        ))
        self[["sourceSystemId"]] <- obj$fromJSONString(
          jsonlite::toJSON(
            GeoAreaList[["sourceSystemId"]],
            auto_unbox = TRUE
          ),
          typeMapping = typeMapping
        )
      }
      if (is.null(typeMapping[["recordURI"]])) {
        self[["recordURI"]] <-
          GeoAreaList[["recordURI"]]
      } else {
        obj <- eval(parse(
          text = paste0(typeMapping[["recordURI"]], "$new()")
        ))
        self[["recordURI"]] <- obj$fromJSONString(
          jsonlite::toJSON(
            GeoAreaList[["recordURI"]],
            auto_unbox = TRUE
          ),
          typeMapping = typeMapping
        )
      }
      if (is.null(typeMapping[["id"]])) {
        self[["id"]] <-
          GeoAreaList[["id"]]
      } else {
        obj <- eval(parse(
          text = paste0(typeMapping[["id"]], "$new()")
        ))
        self[["id"]] <- obj$fromJSONString(
          jsonlite::toJSON(
            GeoAreaList[["id"]],
            auto_unbox = TRUE
          ),
          typeMapping = typeMapping
        )
      }
      if (is.null(typeMapping[["areaType"]])) {
        self[["areaType"]] <-
          GeoAreaList[["areaType"]]
      } else {
        obj <- eval(parse(
          text = paste0(typeMapping[["areaType"]], "$new()")
        ))
        self[["areaType"]] <- obj$fromJSONString(
          jsonlite::toJSON(
            GeoAreaList[["areaType"]],
            auto_unbox = TRUE
          ),
          typeMapping = typeMapping
        )
      }
      if (is.null(typeMapping[["locality"]])) {
        self[["locality"]] <-
          GeoAreaList[["locality"]]
      } else {
        obj <- eval(parse(
          text = paste0(typeMapping[["locality"]], "$new()")
        ))
        self[["locality"]] <- obj$fromJSONString(
          jsonlite::toJSON(
            GeoAreaList[["locality"]],
            auto_unbox = TRUE
          ),
          typeMapping = typeMapping
        )
      }
      if (is.null(typeMapping[["shape"]])) {
        self[["shape"]] <-
          GeoAreaList[["shape"]]
      } else {
        obj <- eval(parse(
          text = paste0(typeMapping[["shape"]], "$new()")
        ))
        self[["shape"]] <- obj$fromJSONString(
          jsonlite::toJSON(
            GeoAreaList[["shape"]],
            auto_unbox = TRUE
          ),
          typeMapping = typeMapping
        )
      }
      if (is.null(typeMapping[["source"]])) {
        self[["source"]] <-
          GeoAreaList[["source"]]
      } else {
        obj <- eval(parse(
          text = paste0(typeMapping[["source"]], "$new()")
        ))
        self[["source"]] <- obj$fromJSONString(
          jsonlite::toJSON(
            GeoAreaList[["source"]],
            auto_unbox = TRUE
          ),
          typeMapping = typeMapping
        )
      }
      if (is.null(typeMapping[["isoCode"]])) {
        self[["isoCode"]] <-
          GeoAreaList[["isoCode"]]
      } else {
        obj <- eval(parse(
          text = paste0(typeMapping[["isoCode"]], "$new()")
        ))
        self[["isoCode"]] <- obj$fromJSONString(
          jsonlite::toJSON(
            GeoAreaList[["isoCode"]],
            auto_unbox = TRUE
          ),
          typeMapping = typeMapping
        )
      }
      if (is.null(typeMapping[["countryNL"]])) {
        self[["countryNL"]] <-
          GeoAreaList[["countryNL"]]
      } else {
        obj <- eval(parse(
          text = paste0(typeMapping[["countryNL"]], "$new()")
        ))
        self[["countryNL"]] <- obj$fromJSONString(
          jsonlite::toJSON(
            GeoAreaList[["countryNL"]],
            auto_unbox = TRUE
          ),
          typeMapping = typeMapping
        )
      }
      invisible(self)
    }
  )
)
