# Netherlands Biodiversity API
#
# Access to the digitised Natural History collection at the Naturalis Biodiversity Center
#
# OpenAPI spec version: v2
# Contact: support@naturalis.nl
# Generated by: https://github.com/swagger-api/swagger-codegen.git


#' FeatureCollection Class
#'
#'
#'
#' @field crs  Crs
#' @field bbox  list(numeric)
#' @field features  list(Feature)
#'
#' @section Methods:
#' \describe{
#'
#' \item{\code{$new()}}{
#'
#'   Constructor FeatureCollection object.
#'
#' }
#' \item{\code{$fromList(FeatureCollectionList)}}{
#'
#'   Create FeatureCollection object from list.
#'
#' }
#'
#' \item{\code{$toList()}}{
#'
#'   Get list representation of FeatureCollection.
#'
#' }
#' \item{\code{fromJSONString(FeatureCollectionJson)}}{
#'
#'   Create FeatureCollection object from JSON.
#'
#' }
#' \item{\code{toJSONString(pretty=TRUE)}}{
#'
#'   Get JSON representation of FeatureCollection.
#'
#' }
#' }
#' @importFrom R6 R6Class
#' @importFrom jsonlite fromJSON toJSON
#' @export
FeatureCollection <- R6::R6Class(
  "FeatureCollection",
  public = list(
    `crs` = NULL,
    `bbox` = NULL,
    `features` = NULL,
    initialize = function(
                              `crs`,
                              `bbox`,
                              `features`) {
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
      if (!missing(`features`)) {
        stopifnot(
          is.list(`features`),
          length(`features`) != 0
        )
        lapply(
          `features`,
          function(x) stopifnot(R6::is.R6(x))
        )
        ## omit names as they should not be part of JSON representation
        self[["features"]] <- unname(`features`)
      }
    },
    toList = function() {
      FeatureCollectionList <- list()
      if (!is.null(self[["crs"]])) {
        FeatureCollectionList[["crs"]] <-
          self[["crs"]]$toList()
      }
      if (!is.null(self[["bbox"]])) {
        FeatureCollectionList[["bbox"]] <-
          self[["bbox"]]
      }
      if (!is.null(self[["features"]])) {
        FeatureCollectionList[["features"]] <-
          lapply(self[["features"]], function(x) x$toList())
      }
      ## omit empty nested lists in returned list
      FeatureCollectionList[vapply(
        FeatureCollectionList,
        length,
        FUN.VALUE = integer(1)
      ) > 0]
    },
    fromList = function(FeatureCollectionList,
                            typeMapping = NULL) {
      self[["crs"]] <- Crs$new()$fromList(
        FeatureCollectionList[["crs"]],
        typeMapping = typeMapping
      )
      self[["bbox"]] <-
        FeatureCollectionList[["bbox"]]
      self[["features"]] <- lapply(
        FeatureCollectionList[["features"]],
        function(x) {
          Feature$new()$fromList(x,
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
    fromJSONString = function(FeatureCollectionJson,
                                  typeMapping = NULL) {
      FeatureCollectionList <- jsonlite::fromJSON(
        FeatureCollectionJson,
        simplifyVector = FALSE
      )
      self <- self$fromList(FeatureCollectionList)
      invisible(self)
    },
    print = function(...) {
      ## print class name
      cat("<FeatureCollection>\n")
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
      if (typeof(self$features) == "environment") {
        cat("\tfeatures:\tobject of class", paste0("<", class(self$features)[1], ">"), "\n")
      }
      else if (typeof(self$features) == "list") {
        cat("\tfeatures:\tlist of length", length(self$features), "\n")
      }
      else {
        cat("\tfeatures:\t", self$features, "\n")
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
