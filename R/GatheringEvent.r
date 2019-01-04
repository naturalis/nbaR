# Netherlands Biodiversity API
#
# Access to the digitised Natural History collection at the Naturalis Biodiversity Center
#
# OpenAPI spec version: v2
# Contact: support@naturalis.nl
# Generated by: https://github.com/swagger-api/swagger-codegen.git


#' GatheringEvent Class
#'
#'
#'
#' @field projectTitle  character
#' @field worldRegion  character
#' @field continent  character
#' @field country  character
#' @field iso3166Code  character
#' @field provinceState  character
#' @field island  character
#' @field locality  character
#' @field city  character
#' @field sublocality  character
#' @field localityText  character
#' @field dateTimeBegin  character
#' @field dateTimeEnd  character
#' @field method  character
#' @field altitude  character
#' @field altitudeUnifOfMeasurement  character
#' @field biotopeText  character
#' @field depth  character
#' @field depthUnitOfMeasurement  character
#' @field gatheringPersons  list(Person)
#' @field gatheringOrganizations  list(Organization)
#' @field siteCoordinates  list(GatheringSiteCoordinates)
#' @field namedAreas  list(NamedArea)
#' @field associatedTaxa  list(AssociatedTaxon)
#' @field chronoStratigraphy  list(ChronoStratigraphy)
#' @field lithoStratigraphy  list(LithoStratigraphy)
#' @field bioStratigraphic  list(BioStratigraphy)
#'
#' @section Methods:
#' \describe{
#'
#' \item{\code{$new()}}{
#'
#'   Constructor GatheringEvent object.
#'
#' }
#' \item{\code{$fromList(GatheringEventList)}}{
#'
#'   Create GatheringEvent object from list.
#'
#' }
#'
#' \item{\code{$toList()}}{
#'
#'   Get list representation of GatheringEvent.
#'
#' }
#' \item{\code{fromJSONString(GatheringEventJson)}}{
#'
#'   Create GatheringEvent object from list.
#'
#' }
#' \item{\code{toJSONString(pretty=TRUE)}}{
#'
#'   Get JSON representation of GatheringEvent.
#'
#' }
#' }
#' @importFrom R6 R6Class
#' @importFrom jsonlite fromJSON toJSON
#' @export
GatheringEvent <- R6::R6Class(
  "GatheringEvent",
  public = list(
    `projectTitle` = NULL,
    `worldRegion` = NULL,
    `continent` = NULL,
    `country` = NULL,
    `iso3166Code` = NULL,
    `provinceState` = NULL,
    `island` = NULL,
    `locality` = NULL,
    `city` = NULL,
    `sublocality` = NULL,
    `localityText` = NULL,
    `dateTimeBegin` = NULL,
    `dateTimeEnd` = NULL,
    `method` = NULL,
    `altitude` = NULL,
    `altitudeUnifOfMeasurement` = NULL,
    `biotopeText` = NULL,
    `depth` = NULL,
    `depthUnitOfMeasurement` = NULL,
    `gatheringPersons` = NULL,
    `gatheringOrganizations` = NULL,
    `siteCoordinates` = NULL,
    `namedAreas` = NULL,
    `associatedTaxa` = NULL,
    `chronoStratigraphy` = NULL,
    `lithoStratigraphy` = NULL,
    `bioStratigraphic` = NULL,
    initialize = function(
                              `projectTitle`,
                              `worldRegion`,
                              `continent`,
                              `country`,
                              `iso3166Code`,
                              `provinceState`,
                              `island`,
                              `locality`,
                              `city`,
                              `sublocality`,
                              `localityText`,
                              `dateTimeBegin`,
                              `dateTimeEnd`,
                              `method`,
                              `altitude`,
                              `altitudeUnifOfMeasurement`,
                              `biotopeText`,
                              `depth`,
                              `depthUnitOfMeasurement`,
                              `gatheringPersons`,
                              `gatheringOrganizations`,
                              `siteCoordinates`,
                              `namedAreas`,
                              `associatedTaxa`,
                              `chronoStratigraphy`,
                              `lithoStratigraphy`,
                              `bioStratigraphic`) {
      if (!missing(`projectTitle`)) {
        stopifnot(
          is.character(`projectTitle`),
          length(`projectTitle`) == 1
        )
        self[["projectTitle"]] <- `projectTitle`
      }
      if (!missing(`worldRegion`)) {
        stopifnot(
          is.character(`worldRegion`),
          length(`worldRegion`) == 1
        )
        self[["worldRegion"]] <- `worldRegion`
      }
      if (!missing(`continent`)) {
        stopifnot(
          is.character(`continent`),
          length(`continent`) == 1
        )
        self[["continent"]] <- `continent`
      }
      if (!missing(`country`)) {
        stopifnot(
          is.character(`country`),
          length(`country`) == 1
        )
        self[["country"]] <- `country`
      }
      if (!missing(`iso3166Code`)) {
        stopifnot(
          is.character(`iso3166Code`),
          length(`iso3166Code`) == 1
        )
        self[["iso3166Code"]] <- `iso3166Code`
      }
      if (!missing(`provinceState`)) {
        stopifnot(
          is.character(`provinceState`),
          length(`provinceState`) == 1
        )
        self[["provinceState"]] <- `provinceState`
      }
      if (!missing(`island`)) {
        stopifnot(
          is.character(`island`),
          length(`island`) == 1
        )
        self[["island"]] <- `island`
      }
      if (!missing(`locality`)) {
        stopifnot(
          is.character(`locality`),
          length(`locality`) == 1
        )
        self[["locality"]] <- `locality`
      }
      if (!missing(`city`)) {
        stopifnot(
          is.character(`city`),
          length(`city`) == 1
        )
        self[["city"]] <- `city`
      }
      if (!missing(`sublocality`)) {
        stopifnot(
          is.character(`sublocality`),
          length(`sublocality`) == 1
        )
        self[["sublocality"]] <- `sublocality`
      }
      if (!missing(`localityText`)) {
        stopifnot(
          is.character(`localityText`),
          length(`localityText`) == 1
        )
        self[["localityText"]] <- `localityText`
      }
      if (!missing(`dateTimeBegin`)) {
        stopifnot(
          is.character(`dateTimeBegin`),
          length(`dateTimeBegin`) == 1
        )
        self[["dateTimeBegin"]] <- `dateTimeBegin`
      }
      if (!missing(`dateTimeEnd`)) {
        stopifnot(
          is.character(`dateTimeEnd`),
          length(`dateTimeEnd`) == 1
        )
        self[["dateTimeEnd"]] <- `dateTimeEnd`
      }
      if (!missing(`method`)) {
        stopifnot(
          is.character(`method`),
          length(`method`) == 1
        )
        self[["method"]] <- `method`
      }
      if (!missing(`altitude`)) {
        stopifnot(
          is.character(`altitude`),
          length(`altitude`) == 1
        )
        self[["altitude"]] <- `altitude`
      }
      if (!missing(`altitudeUnifOfMeasurement`)) {
        stopifnot(
          is.character(`altitudeUnifOfMeasurement`),
          length(`altitudeUnifOfMeasurement`) == 1
        )
        self[["altitudeUnifOfMeasurement"]] <- `altitudeUnifOfMeasurement`
      }
      if (!missing(`biotopeText`)) {
        stopifnot(
          is.character(`biotopeText`),
          length(`biotopeText`) == 1
        )
        self[["biotopeText"]] <- `biotopeText`
      }
      if (!missing(`depth`)) {
        stopifnot(
          is.character(`depth`),
          length(`depth`) == 1
        )
        self[["depth"]] <- `depth`
      }
      if (!missing(`depthUnitOfMeasurement`)) {
        stopifnot(
          is.character(`depthUnitOfMeasurement`),
          length(`depthUnitOfMeasurement`) == 1
        )
        self[["depthUnitOfMeasurement"]] <- `depthUnitOfMeasurement`
      }
      if (!missing(`gatheringPersons`)) {
        stopifnot(
          is.list(`gatheringPersons`),
          length(`gatheringPersons`) != 0
        )
        lapply(
          `gatheringPersons`,
          function(x) stopifnot(R6::is.R6(x))
        )
        ## omit names as they should not be part of JSON representation
        self[["gatheringPersons"]] <- unname(`gatheringPersons`)
      }
      if (!missing(`gatheringOrganizations`)) {
        stopifnot(
          is.list(`gatheringOrganizations`),
          length(`gatheringOrganizations`) != 0
        )
        lapply(
          `gatheringOrganizations`,
          function(x) stopifnot(R6::is.R6(x))
        )
        ## omit names as they should not be part of JSON representation
        self[["gatheringOrganizations"]] <- unname(`gatheringOrganizations`)
      }
      if (!missing(`siteCoordinates`)) {
        stopifnot(
          is.list(`siteCoordinates`),
          length(`siteCoordinates`) != 0
        )
        lapply(
          `siteCoordinates`,
          function(x) stopifnot(R6::is.R6(x))
        )
        ## omit names as they should not be part of JSON representation
        self[["siteCoordinates"]] <- unname(`siteCoordinates`)
      }
      if (!missing(`namedAreas`)) {
        stopifnot(
          is.list(`namedAreas`),
          length(`namedAreas`) != 0
        )
        lapply(
          `namedAreas`,
          function(x) stopifnot(R6::is.R6(x))
        )
        ## omit names as they should not be part of JSON representation
        self[["namedAreas"]] <- unname(`namedAreas`)
      }
      if (!missing(`associatedTaxa`)) {
        stopifnot(
          is.list(`associatedTaxa`),
          length(`associatedTaxa`) != 0
        )
        lapply(
          `associatedTaxa`,
          function(x) stopifnot(R6::is.R6(x))
        )
        ## omit names as they should not be part of JSON representation
        self[["associatedTaxa"]] <- unname(`associatedTaxa`)
      }
      if (!missing(`chronoStratigraphy`)) {
        stopifnot(
          is.list(`chronoStratigraphy`),
          length(`chronoStratigraphy`) != 0
        )
        lapply(
          `chronoStratigraphy`,
          function(x) stopifnot(R6::is.R6(x))
        )
        ## omit names as they should not be part of JSON representation
        self[["chronoStratigraphy"]] <- unname(`chronoStratigraphy`)
      }
      if (!missing(`lithoStratigraphy`)) {
        stopifnot(
          is.list(`lithoStratigraphy`),
          length(`lithoStratigraphy`) != 0
        )
        lapply(
          `lithoStratigraphy`,
          function(x) stopifnot(R6::is.R6(x))
        )
        ## omit names as they should not be part of JSON representation
        self[["lithoStratigraphy"]] <- unname(`lithoStratigraphy`)
      }
      if (!missing(`bioStratigraphic`)) {
        stopifnot(
          is.list(`bioStratigraphic`),
          length(`bioStratigraphic`) != 0
        )
        lapply(
          `bioStratigraphic`,
          function(x) stopifnot(R6::is.R6(x))
        )
        ## omit names as they should not be part of JSON representation
        self[["bioStratigraphic"]] <- unname(`bioStratigraphic`)
      }
    },
    toList = function() {
      GatheringEventList <- list()
      if (!is.null(self[["projectTitle"]])) {
        GatheringEventList[["projectTitle"]] <-
          self[["projectTitle"]]
      }
      if (!is.null(self[["worldRegion"]])) {
        GatheringEventList[["worldRegion"]] <-
          self[["worldRegion"]]
      }
      if (!is.null(self[["continent"]])) {
        GatheringEventList[["continent"]] <-
          self[["continent"]]
      }
      if (!is.null(self[["country"]])) {
        GatheringEventList[["country"]] <-
          self[["country"]]
      }
      if (!is.null(self[["iso3166Code"]])) {
        GatheringEventList[["iso3166Code"]] <-
          self[["iso3166Code"]]
      }
      if (!is.null(self[["provinceState"]])) {
        GatheringEventList[["provinceState"]] <-
          self[["provinceState"]]
      }
      if (!is.null(self[["island"]])) {
        GatheringEventList[["island"]] <-
          self[["island"]]
      }
      if (!is.null(self[["locality"]])) {
        GatheringEventList[["locality"]] <-
          self[["locality"]]
      }
      if (!is.null(self[["city"]])) {
        GatheringEventList[["city"]] <-
          self[["city"]]
      }
      if (!is.null(self[["sublocality"]])) {
        GatheringEventList[["sublocality"]] <-
          self[["sublocality"]]
      }
      if (!is.null(self[["localityText"]])) {
        GatheringEventList[["localityText"]] <-
          self[["localityText"]]
      }
      if (!is.null(self[["dateTimeBegin"]])) {
        GatheringEventList[["dateTimeBegin"]] <-
          self[["dateTimeBegin"]]
      }
      if (!is.null(self[["dateTimeEnd"]])) {
        GatheringEventList[["dateTimeEnd"]] <-
          self[["dateTimeEnd"]]
      }
      if (!is.null(self[["method"]])) {
        GatheringEventList[["method"]] <-
          self[["method"]]
      }
      if (!is.null(self[["altitude"]])) {
        GatheringEventList[["altitude"]] <-
          self[["altitude"]]
      }
      if (!is.null(self[["altitudeUnifOfMeasurement"]])) {
        GatheringEventList[["altitudeUnifOfMeasurement"]] <-
          self[["altitudeUnifOfMeasurement"]]
      }
      if (!is.null(self[["biotopeText"]])) {
        GatheringEventList[["biotopeText"]] <-
          self[["biotopeText"]]
      }
      if (!is.null(self[["depth"]])) {
        GatheringEventList[["depth"]] <-
          self[["depth"]]
      }
      if (!is.null(self[["depthUnitOfMeasurement"]])) {
        GatheringEventList[["depthUnitOfMeasurement"]] <-
          self[["depthUnitOfMeasurement"]]
      }
      if (!is.null(self[["gatheringPersons"]])) {
        GatheringEventList[["gatheringPersons"]] <-
          lapply(self[["gatheringPersons"]], function(x) x$toList())
      }
      if (!is.null(self[["gatheringOrganizations"]])) {
        GatheringEventList[["gatheringOrganizations"]] <-
          lapply(self[["gatheringOrganizations"]], function(x) x$toList())
      }
      if (!is.null(self[["siteCoordinates"]])) {
        GatheringEventList[["siteCoordinates"]] <-
          lapply(self[["siteCoordinates"]], function(x) x$toList())
      }
      if (!is.null(self[["namedAreas"]])) {
        GatheringEventList[["namedAreas"]] <-
          lapply(self[["namedAreas"]], function(x) x$toList())
      }
      if (!is.null(self[["associatedTaxa"]])) {
        GatheringEventList[["associatedTaxa"]] <-
          lapply(self[["associatedTaxa"]], function(x) x$toList())
      }
      if (!is.null(self[["chronoStratigraphy"]])) {
        GatheringEventList[["chronoStratigraphy"]] <-
          lapply(self[["chronoStratigraphy"]], function(x) x$toList())
      }
      if (!is.null(self[["lithoStratigraphy"]])) {
        GatheringEventList[["lithoStratigraphy"]] <-
          lapply(self[["lithoStratigraphy"]], function(x) x$toList())
      }
      if (!is.null(self[["bioStratigraphic"]])) {
        GatheringEventList[["bioStratigraphic"]] <-
          lapply(self[["bioStratigraphic"]], function(x) x$toList())
      }
      ## omit empty nested lists in returned list
      GatheringEventList[vapply(
        GatheringEventList,
        length,
        FUN.VALUE = integer(1)
      ) > 0]
    },
    fromList = function(GatheringEventList,
                            typeMapping = NULL) {
      self[["projectTitle"]] <-
        GatheringEventList[["projectTitle"]]
      self[["worldRegion"]] <-
        GatheringEventList[["worldRegion"]]
      self[["continent"]] <-
        GatheringEventList[["continent"]]
      self[["country"]] <-
        GatheringEventList[["country"]]
      self[["iso3166Code"]] <-
        GatheringEventList[["iso3166Code"]]
      self[["provinceState"]] <-
        GatheringEventList[["provinceState"]]
      self[["island"]] <-
        GatheringEventList[["island"]]
      self[["locality"]] <-
        GatheringEventList[["locality"]]
      self[["city"]] <-
        GatheringEventList[["city"]]
      self[["sublocality"]] <-
        GatheringEventList[["sublocality"]]
      self[["localityText"]] <-
        GatheringEventList[["localityText"]]
      self[["dateTimeBegin"]] <-
        GatheringEventList[["dateTimeBegin"]]
      self[["dateTimeEnd"]] <-
        GatheringEventList[["dateTimeEnd"]]
      self[["method"]] <-
        GatheringEventList[["method"]]
      self[["altitude"]] <-
        GatheringEventList[["altitude"]]
      self[["altitudeUnifOfMeasurement"]] <-
        GatheringEventList[["altitudeUnifOfMeasurement"]]
      self[["biotopeText"]] <-
        GatheringEventList[["biotopeText"]]
      self[["depth"]] <-
        GatheringEventList[["depth"]]
      self[["depthUnitOfMeasurement"]] <-
        GatheringEventList[["depthUnitOfMeasurement"]]
      self[["gatheringPersons"]] <- lapply(
        GatheringEventList[["gatheringPersons"]],
        function(x) {
          Person$new()$fromList(x,
            typeMapping = typeMapping
          )
        }
      )
      self[["gatheringOrganizations"]] <- lapply(
        GatheringEventList[["gatheringOrganizations"]],
        function(x) {
          Organization$new()$fromList(x,
            typeMapping = typeMapping
          )
        }
      )
      self[["siteCoordinates"]] <- lapply(
        GatheringEventList[["siteCoordinates"]],
        function(x) {
          GatheringSiteCoordinates$new()$fromList(x,
            typeMapping = typeMapping
          )
        }
      )
      self[["namedAreas"]] <- lapply(
        GatheringEventList[["namedAreas"]],
        function(x) {
          NamedArea$new()$fromList(x,
            typeMapping = typeMapping
          )
        }
      )
      self[["associatedTaxa"]] <- lapply(
        GatheringEventList[["associatedTaxa"]],
        function(x) {
          AssociatedTaxon$new()$fromList(x,
            typeMapping = typeMapping
          )
        }
      )
      self[["chronoStratigraphy"]] <- lapply(
        GatheringEventList[["chronoStratigraphy"]],
        function(x) {
          ChronoStratigraphy$new()$fromList(x,
            typeMapping = typeMapping
          )
        }
      )
      self[["lithoStratigraphy"]] <- lapply(
        GatheringEventList[["lithoStratigraphy"]],
        function(x) {
          LithoStratigraphy$new()$fromList(x,
            typeMapping = typeMapping
          )
        }
      )
      self[["bioStratigraphic"]] <- lapply(
        GatheringEventList[["bioStratigraphic"]],
        function(x) {
          BioStratigraphy$new()$fromList(x,
            typeMapping = typeMapping
          )
        }
      )
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
    fromJSONString = function(GatheringEventJson,
                                  typeMapping = NULL) {
      GatheringEventList <- jsonlite::fromJSON(
        GatheringEventJson,
        simplifyVector = FALSE
      )
      self <- self$fromList(GatheringEventList)
      invisible(self)
    }
  )
)
