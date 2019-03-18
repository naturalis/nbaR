# Netherlands Biodiversity API
#
# Access to the digitised Natural History collection at the Naturalis Biodiversity Center
#
# OpenAPI spec version: v2
# Contact: support@naturalis.nl
# Generated by: https://github.com/swagger-api/swagger-codegen.git


#' MultiPolygon Class
#'
#'
#'
#' @field crs  Crs
#' @field bbox  list(numeric)
#' @field coordinates  list(LngLatAlt)
#'
#' @section Methods:
#' \describe{
#'
#' \item{\code{$new()}}{
#'
#'   Constructor MultiPolygon object.
#'
#' }
#' \item{\code{$fromList(MultiPolygonList)}}{
#'
#'   Create MultiPolygon object from list.
#'
#' }
#'
#' \item{\code{$toList()}}{
#'
#'   Get list representation of MultiPolygon.
#'
#' }
#' \item{\code{fromJSONString(MultiPolygonJson)}}{
#'
#'   Create MultiPolygon object from JSON.
#'
#' }
#' \item{\code{toJSONString(pretty=TRUE)}}{
#'
#'   Get JSON representation of MultiPolygon.
#'
#' }
#' }
#' @importFrom R6 R6Class
#' @importFrom jsonlite fromJSON toJSON
#' @export
MultiPolygon <- R6::R6Class(
  "MultiPolygon",
  public = list(
    `crs` = NULL,
    `bbox` = NULL,
    `coordinates` = NULL,
    initialize = function(
                              `crs`,
                              `bbox`,
                              `coordinates`) {
      if (!missing(`crs`)) {
        stopifnot(R6::is.R6(`crs`))
        self[["crs"]] <- `crs`
      }
      if (!missing(`bbox`)) {
        stopifnot(
          is.list(`bbox`),
          length(`bbox`) != 0
        )
        lapply(
          `bbox`,
          function(x) stopifnot(is.character(x))
        )
        ## omit names as they should not be part of JSON representation
        self[["bbox"]] <- unname(`bbox`)
      }
      if (!missing(`coordinates`)) {
        stopifnot(
          is.list(`coordinates`),
          length(`coordinates`) != 0
        )
        lapply(
          `coordinates`,
          function(x) stopifnot(is.character(x))
        )
        ## omit names as they should not be part of JSON representation
        self[["coordinates"]] <- unname(`coordinates`)
      }
    },
    toList = function() {
      MultiPolygonList <- list()
      if (!is.null(self[["crs"]])) {
        MultiPolygonList[["crs"]] <-
          self[["crs"]]$toList()
      }
      if (!is.null(self[["bbox"]])) {
        MultiPolygonList[["bbox"]] <-
          self[["bbox"]]
      }
      if (!is.null(self[["coordinates"]])) {
        MultiPolygonList[["coordinates"]] <-
          self[["coordinates"]]
      }
      ## omit empty nested lists in returned list
      MultiPolygonList[vapply(
        MultiPolygonList,
        length,
        FUN.VALUE = integer(1)
      ) > 0]
    },
    fromList = function(MultiPolygonList,
                            typeMapping = NULL) {
      self[["crs"]] <- Crs$new()$fromList(
        MultiPolygonList[["crs"]],
        typeMapping = typeMapping
      )
      self[["bbox"]] <-
        MultiPolygonList[["bbox"]]
      self[["coordinates"]] <-
        MultiPolygonList[["coordinates"]]
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
    fromJSONString = function(MultiPolygonJson,
                                  typeMapping = NULL) {
      MultiPolygonList <- jsonlite::fromJSON(
        MultiPolygonJson,
        simplifyVector = FALSE
      )
      self <- self$fromList(MultiPolygonList)
      invisible(self)
    },
    print = function(...) {
      ## print class name
      cat("<MultiPolygon>\n")
      ## print all members with values
      cat("Fields:\n")
      if (typeof(self$crs) == "environment") {
        cat("\tcrs:\tobject of class", paste0("<", class(self$crs)[1], ">"), "\n")
      }
      else if (typeof(self$crs) == "list") {
        cat("\tcrs:\tlist of length", length(self$crs), "\n")
      }
      else {
        cat("\tcrs:\t", self$crs, "\n")
      }
      if (typeof(self$bbox) == "environment") {
        cat("\tbbox:\tobject of class", paste0("<", class(self$bbox)[1], ">"), "\n")
      }
      else if (typeof(self$bbox) == "list") {
        cat("\tbbox:\tlist of length", length(self$bbox), "\n")
      }
      else {
        cat("\tbbox:\t", self$bbox, "\n")
      }
      if (typeof(self$coordinates) == "environment") {
        cat("\tcoordinates:\tobject of class", paste0("<", class(self$coordinates)[1], ">"), "\n")
      }
      else if (typeof(self$coordinates) == "list") {
        cat("\tcoordinates:\tlist of length", length(self$coordinates), "\n")
      }
      else {
        cat("\tcoordinates:\t", self$coordinates, "\n")
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
