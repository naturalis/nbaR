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
#'   Create Filter object from JSON.
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
    },
    print = function(...) {
      ## print class name
      cat("<Filter>\n")
      ## print all members with values
      cat("Fields:\n")
      if (typeof(self$acceptRegexp) == "environment") {
        cat("\tacceptRegexp:\tobject of class", paste0("<", class(self$acceptRegexp)[1], ">"), "\n")
      }
      else if (typeof(self$acceptRegexp) == "list") {
        cat("\tacceptRegexp:\tlist of length", length(self$acceptRegexp), "\n")
      }
      else {
        cat("\tacceptRegexp:\t", self$acceptRegexp, "\n")
      }
      if (typeof(self$rejectRegexp) == "environment") {
        cat("\trejectRegexp:\tobject of class", paste0("<", class(self$rejectRegexp)[1], ">"), "\n")
      }
      else if (typeof(self$rejectRegexp) == "list") {
        cat("\trejectRegexp:\tlist of length", length(self$rejectRegexp), "\n")
      }
      else {
        cat("\trejectRegexp:\t", self$rejectRegexp, "\n")
      }
      if (typeof(self$acceptValues) == "environment") {
        cat("\tacceptValues:\tobject of class", paste0("<", class(self$acceptValues)[1], ">"), "\n")
      }
      else if (typeof(self$acceptValues) == "list") {
        cat("\tacceptValues:\tlist of length", length(self$acceptValues), "\n")
      }
      else {
        cat("\tacceptValues:\t", self$acceptValues, "\n")
      }
      if (typeof(self$rejectValues) == "environment") {
        cat("\trejectValues:\tobject of class", paste0("<", class(self$rejectValues)[1], ">"), "\n")
      }
      else if (typeof(self$rejectValues) == "list") {
        cat("\trejectValues:\tlist of length", length(self$rejectValues), "\n")
      }
      else {
        cat("\trejectValues:\t", self$rejectValues, "\n")
      }
      ## print all methods
      cat("Methods:\n")
      cat("\tfromJSONString\n")
      cat("\ttoJSONString\n")
      cat("\tfromList\n")
      cat("\ttoList\n")
      cat("\tprint\n")
      invisible(self)
    }
  )
)
