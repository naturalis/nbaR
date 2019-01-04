# Netherlands Biodiversity API
#
# Access to the digitised Natural History collection at the Naturalis Biodiversity Center
#
# OpenAPI spec version: v2
# Contact: support@naturalis.nl
# Generated by: https://github.com/swagger-api/swagger-codegen.git


#' Filter Class
#'
#'
#'
#' @field acceptRegexp  character
#' @field rejectRegexp  character
#' @field acceptValues  list(character)
#' @field rejectValues  list(character)
#'
#' @section Methods:
#' \describe{
#'
#' \item{\code{$new()}}{
#'
#'   Constructor Filter object.
#'
#' }
#' \item{\code{$fromList(FilterList)}}{
#'
#'   Create Filter object from list.
#'
#' }
#'
#' \item{\code{$toList()}}{
#'
#'   Get list representation of Filter.
#'
#' }
#' \item{\code{fromJSONString(FilterJson)}}{
#'
#'   Create Filter object from list.
#'
#' }
#' \item{\code{toJSONString(pretty=TRUE)}}{
#'
#'   Get JSON representation of Filter.
#'
#' }
#' }
#' @importFrom R6 R6Class
#' @importFrom jsonlite fromJSON toJSON
#' @export
Filter <- R6::R6Class(
  "Filter",
  public = list(
    `acceptRegexp` = NULL,
    `rejectRegexp` = NULL,
    `acceptValues` = NULL,
    `rejectValues` = NULL,
    initialize = function(
                              `acceptRegexp`,
                              `rejectRegexp`,
                              `acceptValues`,
                              `rejectValues`) {
      if (!missing(`acceptRegexp`)) {
        stopifnot(
          is.character(`acceptRegexp`),
          length(`acceptRegexp`) == 1
        )
        self[["acceptRegexp"]] <- `acceptRegexp`
      }
      if (!missing(`rejectRegexp`)) {
        stopifnot(
          is.character(`rejectRegexp`),
          length(`rejectRegexp`) == 1
        )
        self[["rejectRegexp"]] <- `rejectRegexp`
      }
      if (!missing(`acceptValues`)) {
        stopifnot(
          is.list(`acceptValues`),
          length(`acceptValues`) != 0
        )
        lapply(
          `acceptValues`,
          function(x) stopifnot(is.character(x))
        )
        ## omit names as they should not be part of JSON representation
        self[["acceptValues"]] <- unname(`acceptValues`)
      }
      if (!missing(`rejectValues`)) {
        stopifnot(
          is.list(`rejectValues`),
          length(`rejectValues`) != 0
        )
        lapply(
          `rejectValues`,
          function(x) stopifnot(is.character(x))
        )
        ## omit names as they should not be part of JSON representation
        self[["rejectValues"]] <- unname(`rejectValues`)
      }
    },
    toList = function() {
      FilterList <- list()
      if (!is.null(self[["acceptRegexp"]])) {
        FilterList[["acceptRegexp"]] <-
          self[["acceptRegexp"]]
      }
      if (!is.null(self[["rejectRegexp"]])) {
        FilterList[["rejectRegexp"]] <-
          self[["rejectRegexp"]]
      }
      if (!is.null(self[["acceptValues"]])) {
        FilterList[["acceptValues"]] <-
          self[["acceptValues"]]
      }
      if (!is.null(self[["rejectValues"]])) {
        FilterList[["rejectValues"]] <-
          self[["rejectValues"]]
      }
      ## omit empty nested lists in returned list
      FilterList[vapply(
        FilterList,
        length,
        FUN.VALUE = integer(1)
      ) > 0]
    },
    fromList = function(FilterList,
                            typeMapping = NULL) {
      self[["acceptRegexp"]] <-
        FilterList[["acceptRegexp"]]
      self[["rejectRegexp"]] <-
        FilterList[["rejectRegexp"]]
      self[["acceptValues"]] <-
        FilterList[["acceptValues"]]
      self[["rejectValues"]] <-
        FilterList[["rejectValues"]]
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
    fromJSONString = function(FilterJson,
                                  typeMapping = NULL) {
      FilterList <- jsonlite::fromJSON(
        FilterJson,
        simplifyVector = FALSE
      )
      self <- self$fromList(FilterList)
      invisible(self)
    }
  )
)
