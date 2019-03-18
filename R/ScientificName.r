# Netherlands Biodiversity API
#
# Access to the digitised Natural History collection at the Naturalis Biodiversity Center
#
# OpenAPI spec version: v2
# Contact: support@naturalis.nl
# Generated by: https://github.com/swagger-api/swagger-codegen.git


#' ScientificName Class
#'
#'
#'
#' @field fullScientificName  character
#' @field taxonomicStatus  character
#' @field genusOrMonomial  character
#' @field subgenus  character
#' @field specificEpithet  character
#' @field infraspecificEpithet  character
#' @field infraspecificMarker  character
#' @field nameAddendum  character
#' @field authorshipVerbatim  character
#' @field author  character
#' @field year  character
#' @field scientificNameGroup  character
#' @field references  list(Reference)
#' @field experts  list(Expert)
#'
#' @section Methods:
#' \describe{
#'
#' \item{\code{$new()}}{
#'
#'   Constructor ScientificName object.
#'
#' }
#' \item{\code{$fromList(ScientificNameList)}}{
#'
#'   Create ScientificName object from list.
#'
#' }
#'
#' \item{\code{$toList()}}{
#'
#'   Get list representation of ScientificName.
#'
#' }
#' \item{\code{fromJSONString(ScientificNameJson)}}{
#'
#'   Create ScientificName object from JSON.
#'
#' }
#' \item{\code{toJSONString(pretty=TRUE)}}{
#'
#'   Get JSON representation of ScientificName.
#'
#' }
#' }
#' @importFrom R6 R6Class
#' @importFrom jsonlite fromJSON toJSON
#' @export
ScientificName <- R6::R6Class(
  "ScientificName",
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
    initialize = function(
                              `fullScientificName`,
                              `taxonomicStatus`,
                              `genusOrMonomial`,
                              `subgenus`,
                              `specificEpithet`,
                              `infraspecificEpithet`,
                              `infraspecificMarker`,
                              `nameAddendum`,
                              `authorshipVerbatim`,
                              `author`,
                              `year`,
                              `scientificNameGroup`,
                              `references`,
                              `experts`) {
      if (!missing(`fullScientificName`)) {
        stopifnot(
          is.character(`fullScientificName`),
          length(`fullScientificName`) == 1
        )
        self[["fullScientificName"]] <- `fullScientificName`
      }
      if (!missing(`taxonomicStatus`)) {
        stopifnot(
          is.character(`taxonomicStatus`),
          length(`taxonomicStatus`) == 1
        )
        self[["taxonomicStatus"]] <- `taxonomicStatus`
      }
      if (!missing(`genusOrMonomial`)) {
        stopifnot(
          is.character(`genusOrMonomial`),
          length(`genusOrMonomial`) == 1
        )
        self[["genusOrMonomial"]] <- `genusOrMonomial`
      }
      if (!missing(`subgenus`)) {
        stopifnot(
          is.character(`subgenus`),
          length(`subgenus`) == 1
        )
        self[["subgenus"]] <- `subgenus`
      }
      if (!missing(`specificEpithet`)) {
        stopifnot(
          is.character(`specificEpithet`),
          length(`specificEpithet`) == 1
        )
        self[["specificEpithet"]] <- `specificEpithet`
      }
      if (!missing(`infraspecificEpithet`)) {
        stopifnot(
          is.character(`infraspecificEpithet`),
          length(`infraspecificEpithet`) == 1
        )
        self[["infraspecificEpithet"]] <- `infraspecificEpithet`
      }
      if (!missing(`infraspecificMarker`)) {
        stopifnot(
          is.character(`infraspecificMarker`),
          length(`infraspecificMarker`) == 1
        )
        self[["infraspecificMarker"]] <- `infraspecificMarker`
      }
      if (!missing(`nameAddendum`)) {
        stopifnot(
          is.character(`nameAddendum`),
          length(`nameAddendum`) == 1
        )
        self[["nameAddendum"]] <- `nameAddendum`
      }
      if (!missing(`authorshipVerbatim`)) {
        stopifnot(
          is.character(`authorshipVerbatim`),
          length(`authorshipVerbatim`) == 1
        )
        self[["authorshipVerbatim"]] <- `authorshipVerbatim`
      }
      if (!missing(`author`)) {
        stopifnot(
          is.character(`author`),
          length(`author`) == 1
        )
        self[["author"]] <- `author`
      }
      if (!missing(`year`)) {
        stopifnot(
          is.character(`year`),
          length(`year`) == 1
        )
        self[["year"]] <- `year`
      }
      if (!missing(`scientificNameGroup`)) {
        stopifnot(
          is.character(`scientificNameGroup`),
          length(`scientificNameGroup`) == 1
        )
        self[["scientificNameGroup"]] <- `scientificNameGroup`
      }
      if (!missing(`references`)) {
        stopifnot(
          is.list(`references`),
          length(`references`) != 0
        )
        lapply(
          `references`,
          function(x) stopifnot(R6::is.R6(x))
        )
        ## omit names as they should not be part of JSON representation
        self[["references"]] <- unname(`references`)
      }
      if (!missing(`experts`)) {
        stopifnot(
          is.list(`experts`),
          length(`experts`) != 0
        )
        lapply(
          `experts`,
          function(x) stopifnot(R6::is.R6(x))
        )
        ## omit names as they should not be part of JSON representation
        self[["experts"]] <- unname(`experts`)
      }
    },
    toList = function() {
      ScientificNameList <- list()
      if (!is.null(self[["fullScientificName"]])) {
        ScientificNameList[["fullScientificName"]] <-
          self[["fullScientificName"]]
      }
      if (!is.null(self[["taxonomicStatus"]])) {
        ScientificNameList[["taxonomicStatus"]] <-
          self[["taxonomicStatus"]]
      }
      if (!is.null(self[["genusOrMonomial"]])) {
        ScientificNameList[["genusOrMonomial"]] <-
          self[["genusOrMonomial"]]
      }
      if (!is.null(self[["subgenus"]])) {
        ScientificNameList[["subgenus"]] <-
          self[["subgenus"]]
      }
      if (!is.null(self[["specificEpithet"]])) {
        ScientificNameList[["specificEpithet"]] <-
          self[["specificEpithet"]]
      }
      if (!is.null(self[["infraspecificEpithet"]])) {
        ScientificNameList[["infraspecificEpithet"]] <-
          self[["infraspecificEpithet"]]
      }
      if (!is.null(self[["infraspecificMarker"]])) {
        ScientificNameList[["infraspecificMarker"]] <-
          self[["infraspecificMarker"]]
      }
      if (!is.null(self[["nameAddendum"]])) {
        ScientificNameList[["nameAddendum"]] <-
          self[["nameAddendum"]]
      }
      if (!is.null(self[["authorshipVerbatim"]])) {
        ScientificNameList[["authorshipVerbatim"]] <-
          self[["authorshipVerbatim"]]
      }
      if (!is.null(self[["author"]])) {
        ScientificNameList[["author"]] <-
          self[["author"]]
      }
      if (!is.null(self[["year"]])) {
        ScientificNameList[["year"]] <-
          self[["year"]]
      }
      if (!is.null(self[["scientificNameGroup"]])) {
        ScientificNameList[["scientificNameGroup"]] <-
          self[["scientificNameGroup"]]
      }
      if (!is.null(self[["references"]])) {
        ScientificNameList[["references"]] <-
          lapply(self[["references"]], function(x) x$toList())
      }
      if (!is.null(self[["experts"]])) {
        ScientificNameList[["experts"]] <-
          lapply(self[["experts"]], function(x) x$toList())
      }
      ## omit empty nested lists in returned list
      ScientificNameList[vapply(
        ScientificNameList,
        length,
        FUN.VALUE = integer(1)
      ) > 0]
    },
    fromList = function(ScientificNameList,
                            typeMapping = NULL) {
      self[["fullScientificName"]] <-
        ScientificNameList[["fullScientificName"]]
      self[["taxonomicStatus"]] <-
        ScientificNameList[["taxonomicStatus"]]
      self[["genusOrMonomial"]] <-
        ScientificNameList[["genusOrMonomial"]]
      self[["subgenus"]] <-
        ScientificNameList[["subgenus"]]
      self[["specificEpithet"]] <-
        ScientificNameList[["specificEpithet"]]
      self[["infraspecificEpithet"]] <-
        ScientificNameList[["infraspecificEpithet"]]
      self[["infraspecificMarker"]] <-
        ScientificNameList[["infraspecificMarker"]]
      self[["nameAddendum"]] <-
        ScientificNameList[["nameAddendum"]]
      self[["authorshipVerbatim"]] <-
        ScientificNameList[["authorshipVerbatim"]]
      self[["author"]] <-
        ScientificNameList[["author"]]
      self[["year"]] <-
        ScientificNameList[["year"]]
      self[["scientificNameGroup"]] <-
        ScientificNameList[["scientificNameGroup"]]
      self[["references"]] <- lapply(
        ScientificNameList[["references"]],
        function(x) {
          Reference$new()$fromList(x,
            typeMapping = typeMapping
          )
        }
      )
      self[["experts"]] <- lapply(
        ScientificNameList[["experts"]],
        function(x) {
          Expert$new()$fromList(x,
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
    fromJSONString = function(ScientificNameJson,
                                  typeMapping = NULL) {
      ScientificNameList <- jsonlite::fromJSON(
        ScientificNameJson,
        simplifyVector = FALSE
      )
      self <- self$fromList(ScientificNameList)
      invisible(self)
    },
    print = function(...) {
      ## print class name
      cat("<ScientificName>\n")
      ## print all members with values
      cat("Fields:\n")
      if (typeof(self$fullScientificName) == "environment") {
        cat("\tfullScientificName:\tobject of class", paste0("<", class(self$fullScientificName)[1], ">"), "\n")
      }
      else if (typeof(self$fullScientificName) == "list") {
        cat("\tfullScientificName:\tlist of length", length(self$fullScientificName), "\n")
      }
      else {
        cat("\tfullScientificName:\t", self$fullScientificName, "\n")
      }
      if (typeof(self$taxonomicStatus) == "environment") {
        cat("\ttaxonomicStatus:\tobject of class", paste0("<", class(self$taxonomicStatus)[1], ">"), "\n")
      }
      else if (typeof(self$taxonomicStatus) == "list") {
        cat("\ttaxonomicStatus:\tlist of length", length(self$taxonomicStatus), "\n")
      }
      else {
        cat("\ttaxonomicStatus:\t", self$taxonomicStatus, "\n")
      }
      if (typeof(self$genusOrMonomial) == "environment") {
        cat("\tgenusOrMonomial:\tobject of class", paste0("<", class(self$genusOrMonomial)[1], ">"), "\n")
      }
      else if (typeof(self$genusOrMonomial) == "list") {
        cat("\tgenusOrMonomial:\tlist of length", length(self$genusOrMonomial), "\n")
      }
      else {
        cat("\tgenusOrMonomial:\t", self$genusOrMonomial, "\n")
      }
      if (typeof(self$subgenus) == "environment") {
        cat("\tsubgenus:\tobject of class", paste0("<", class(self$subgenus)[1], ">"), "\n")
      }
      else if (typeof(self$subgenus) == "list") {
        cat("\tsubgenus:\tlist of length", length(self$subgenus), "\n")
      }
      else {
        cat("\tsubgenus:\t", self$subgenus, "\n")
      }
      if (typeof(self$specificEpithet) == "environment") {
        cat("\tspecificEpithet:\tobject of class", paste0("<", class(self$specificEpithet)[1], ">"), "\n")
      }
      else if (typeof(self$specificEpithet) == "list") {
        cat("\tspecificEpithet:\tlist of length", length(self$specificEpithet), "\n")
      }
      else {
        cat("\tspecificEpithet:\t", self$specificEpithet, "\n")
      }
      if (typeof(self$infraspecificEpithet) == "environment") {
        cat("\tinfraspecificEpithet:\tobject of class", paste0("<", class(self$infraspecificEpithet)[1], ">"), "\n")
      }
      else if (typeof(self$infraspecificEpithet) == "list") {
        cat("\tinfraspecificEpithet:\tlist of length", length(self$infraspecificEpithet), "\n")
      }
      else {
        cat("\tinfraspecificEpithet:\t", self$infraspecificEpithet, "\n")
      }
      if (typeof(self$infraspecificMarker) == "environment") {
        cat("\tinfraspecificMarker:\tobject of class", paste0("<", class(self$infraspecificMarker)[1], ">"), "\n")
      }
      else if (typeof(self$infraspecificMarker) == "list") {
        cat("\tinfraspecificMarker:\tlist of length", length(self$infraspecificMarker), "\n")
      }
      else {
        cat("\tinfraspecificMarker:\t", self$infraspecificMarker, "\n")
      }
      if (typeof(self$nameAddendum) == "environment") {
        cat("\tnameAddendum:\tobject of class", paste0("<", class(self$nameAddendum)[1], ">"), "\n")
      }
      else if (typeof(self$nameAddendum) == "list") {
        cat("\tnameAddendum:\tlist of length", length(self$nameAddendum), "\n")
      }
      else {
        cat("\tnameAddendum:\t", self$nameAddendum, "\n")
      }
      if (typeof(self$authorshipVerbatim) == "environment") {
        cat("\tauthorshipVerbatim:\tobject of class", paste0("<", class(self$authorshipVerbatim)[1], ">"), "\n")
      }
      else if (typeof(self$authorshipVerbatim) == "list") {
        cat("\tauthorshipVerbatim:\tlist of length", length(self$authorshipVerbatim), "\n")
      }
      else {
        cat("\tauthorshipVerbatim:\t", self$authorshipVerbatim, "\n")
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
      if (typeof(self$year) == "environment") {
        cat("\tyear:\tobject of class", paste0("<", class(self$year)[1], ">"), "\n")
      }
      else if (typeof(self$year) == "list") {
        cat("\tyear:\tlist of length", length(self$year), "\n")
      }
      else {
        cat("\tyear:\t", self$year, "\n")
      }
      if (typeof(self$scientificNameGroup) == "environment") {
        cat("\tscientificNameGroup:\tobject of class", paste0("<", class(self$scientificNameGroup)[1], ">"), "\n")
      }
      else if (typeof(self$scientificNameGroup) == "list") {
        cat("\tscientificNameGroup:\tlist of length", length(self$scientificNameGroup), "\n")
      }
      else {
        cat("\tscientificNameGroup:\t", self$scientificNameGroup, "\n")
      }
      if (typeof(self$references) == "environment") {
        cat("\treferences:\tobject of class", paste0("<", class(self$references)[1], ">"), "\n")
      }
      else if (typeof(self$references) == "list") {
        cat("\treferences:\tlist of length", length(self$references), "\n")
      }
      else {
        cat("\treferences:\t", self$references, "\n")
      }
      if (typeof(self$experts) == "environment") {
        cat("\texperts:\tobject of class", paste0("<", class(self$experts)[1], ">"), "\n")
      }
      else if (typeof(self$experts) == "list") {
        cat("\texperts:\tlist of length", length(self$experts), "\n")
      }
      else {
        cat("\texperts:\t", self$experts, "\n")
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
