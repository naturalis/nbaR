# Netherlands Biodiversity API
#
# Access to the digitised Natural History collection at the Naturalis Biodiversity Center
#
# OpenAPI spec version: v2
# Contact: support@naturalis.nl
# Generated by: https://github.com/swagger-api/swagger-codegen.git


#' Reference Class
#'
#'
#'
#' @field titleCitation  character
#' @field citationDetail  character
#' @field uri  character
#' @field author  Person
#' @field publicationDate  character
#'
#' @section Methods:
#' \describe{
#'
#' \item{\code{$new()}}{
#'
#'   Constructor Reference object.
#'
#' }
#' \item{\code{$fromList(ReferenceList)}}{
#'
#'   Create Reference object from list.
#'
#' }
#'
#' \item{\code{$toList()}}{
#'
#'   Get list representation of Reference.
#'
#' }
#' \item{\code{fromJSONString(ReferenceJson)}}{
#'
#'   Create Reference object from JSON.
#'
#' }
#' \item{\code{toJSONString(pretty=TRUE)}}{
#'
#'   Get JSON representation of Reference.
#'
#' }
#' }
#' @importFrom R6 R6Class
#' @importFrom jsonlite fromJSON toJSON
#' @export
Reference <- R6::R6Class(
  "Reference",
  public = list(
    `titleCitation` = NULL,
    `citationDetail` = NULL,
    `uri` = NULL,
    `author` = NULL,
    `publicationDate` = NULL,
    initialize = function(
                              `titleCitation`,
                              `citationDetail`,
                              `uri`,
                              `author`,
                              `publicationDate`) {
      if (!missing(`titleCitation`)) {
        stopifnot(
          is.character(`titleCitation`),
          length(`titleCitation`) == 1
        )
        self[["titleCitation"]] <- `titleCitation`
      }
      if (!missing(`citationDetail`)) {
        stopifnot(
          is.character(`citationDetail`),
          length(`citationDetail`) == 1
        )
        self[["citationDetail"]] <- `citationDetail`
      }
      if (!missing(`uri`)) {
        stopifnot(
          is.character(`uri`),
          length(`uri`) == 1
        )
        self[["uri"]] <- `uri`
      }
      if (!missing(`author`)) {
        stopifnot(R6::is.R6(`author`))
        self[["author"]] <- `author`
      }
      if (!missing(`publicationDate`)) {
        stopifnot(
          is.character(`publicationDate`),
          length(`publicationDate`) == 1
        )
        self[["publicationDate"]] <- `publicationDate`
      }
    },
    toList = function() {
      ReferenceList <- list()
      if (!is.null(self[["titleCitation"]])) {
        ReferenceList[["titleCitation"]] <-
          self[["titleCitation"]]
      }
      if (!is.null(self[["citationDetail"]])) {
        ReferenceList[["citationDetail"]] <-
          self[["citationDetail"]]
      }
      if (!is.null(self[["uri"]])) {
        ReferenceList[["uri"]] <-
          self[["uri"]]
      }
      if (!is.null(self[["author"]])) {
        ReferenceList[["author"]] <-
          self[["author"]]$toList()
      }
      if (!is.null(self[["publicationDate"]])) {
        ReferenceList[["publicationDate"]] <-
          self[["publicationDate"]]
      }
      ## omit empty nested lists in returned list
      ReferenceList[vapply(
        ReferenceList,
        length,
        FUN.VALUE = integer(1)
      ) > 0]
    },
    fromList = function(ReferenceList,
                            typeMapping = NULL) {
      self[["titleCitation"]] <-
        ReferenceList[["titleCitation"]]
      self[["citationDetail"]] <-
        ReferenceList[["citationDetail"]]
      self[["uri"]] <-
        ReferenceList[["uri"]]
      self[["author"]] <- Person$new()$fromList(
        ReferenceList[["author"]],
        typeMapping = typeMapping
      )
      self[["publicationDate"]] <-
        ReferenceList[["publicationDate"]]
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
    fromJSONString = function(ReferenceJson,
                                  typeMapping = NULL) {
      ReferenceList <- jsonlite::fromJSON(
        ReferenceJson,
        simplifyVector = FALSE
      )
      self <- self$fromList(ReferenceList)
      invisible(self)
    },
    print = function(...) {
      ## print class name
      cat("<Reference>\n")
      ## print all members with values
      cat("Fields:\n")
      if (typeof(self$titleCitation) == "environment") {
        cat("\ttitleCitation:\tobject of class", paste0("<", class(self$titleCitation)[1], ">"), "\n")
      }
      else if (typeof(self$titleCitation) == "list") {
        cat("\ttitleCitation:\tlist of length", length(self$titleCitation), "\n")
      }
      else {
        cat("\ttitleCitation:\t", self$titleCitation, "\n")
      }
      if (typeof(self$citationDetail) == "environment") {
        cat("\tcitationDetail:\tobject of class", paste0("<", class(self$citationDetail)[1], ">"), "\n")
      }
      else if (typeof(self$citationDetail) == "list") {
        cat("\tcitationDetail:\tlist of length", length(self$citationDetail), "\n")
      }
      else {
        cat("\tcitationDetail:\t", self$citationDetail, "\n")
      }
      if (typeof(self$uri) == "environment") {
        cat("\turi:\tobject of class", paste0("<", class(self$uri)[1], ">"), "\n")
      }
      else if (typeof(self$uri) == "list") {
        cat("\turi:\tlist of length", length(self$uri), "\n")
      }
      else {
        cat("\turi:\t", self$uri, "\n")
      }
      if (typeof(self$author) == "environment") {
        cat("\tauthor:\tobject of class", paste0("<", class(self$author)[1], ">"), "\n")
      }
      else if (typeof(self$author) == "list") {
        cat("\tauthor:\tlist of length", length(self$author), "\n")
      }
      else {
        cat("\tauthor:\t", self$author, "\n")
      }
      if (typeof(self$publicationDate) == "environment") {
        cat("\tpublicationDate:\tobject of class", paste0("<", class(self$publicationDate)[1], ">"), "\n")
      }
      else if (typeof(self$publicationDate) == "list") {
        cat("\tpublicationDate:\tlist of length", length(self$publicationDate), "\n")
      }
      else {
        cat("\tpublicationDate:\t", self$publicationDate, "\n")
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
