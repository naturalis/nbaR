# Netherlands Biodiversity API
#
# Access to the digitised Natural History collection at the Naturalis Biodiversity Center
#
# OpenAPI spec version: v2
# Contact: support@naturalis.nl
# Generated by: https://github.com/swagger-api/swagger-codegen.git


#' ChronoStratigraphy Class
#'
#'
#'
#' @field youngRegionalSubstage  character
#' @field youngRegionalStage  character
#' @field youngRegionalSeries  character
#' @field youngDatingQualifier  character
#' @field youngInternSystem  character
#' @field youngInternSubstage  character
#' @field youngInternStage  character
#' @field youngInternSeries  character
#' @field youngInternErathem  character
#' @field youngInternEonothem  character
#' @field youngChronoName  character
#' @field youngCertainty  character
#' @field oldDatingQualifier  character
#' @field chronoPreferredFlag  logical
#' @field oldRegionalSubstage  character
#' @field oldRegionalStage  character
#' @field oldRegionalSeries  character
#' @field oldInternSystem  character
#' @field oldInternSubstage  character
#' @field oldInternStage  character
#' @field oldInternSeries  character
#' @field oldInternErathem  character
#' @field oldInternEonothem  character
#' @field oldChronoName  character
#' @field chronoIdentifier  character
#' @field oldCertainty  character
#'
#' @section Methods:
#' \describe{
#'
#' \item{\code{$new()}}{
#'
#'   Constructor ChronoStratigraphy object.
#'
#' }
#' \item{\code{$fromList(ChronoStratigraphyList)}}{
#'
#'   Create ChronoStratigraphy object from list.
#'
#' }
#'
#' \item{\code{$toList()}}{
#'
#'   Get list representation of ChronoStratigraphy.
#'
#' }
#' \item{\code{fromJSONString(ChronoStratigraphyJson)}}{
#'
#'   Create ChronoStratigraphy object from JSON.
#'
#' }
#' \item{\code{toJSONString(pretty=TRUE)}}{
#'
#'   Get JSON representation of ChronoStratigraphy.
#'
#' }
#' }
#' @importFrom R6 R6Class
#' @importFrom jsonlite fromJSON toJSON
#' @export
ChronoStratigraphy <- R6::R6Class(
  "ChronoStratigraphy",
  public = list(
    `youngRegionalSubstage` = NULL,
    `youngRegionalStage` = NULL,
    `youngRegionalSeries` = NULL,
    `youngDatingQualifier` = NULL,
    `youngInternSystem` = NULL,
    `youngInternSubstage` = NULL,
    `youngInternStage` = NULL,
    `youngInternSeries` = NULL,
    `youngInternErathem` = NULL,
    `youngInternEonothem` = NULL,
    `youngChronoName` = NULL,
    `youngCertainty` = NULL,
    `oldDatingQualifier` = NULL,
    `chronoPreferredFlag` = NULL,
    `oldRegionalSubstage` = NULL,
    `oldRegionalStage` = NULL,
    `oldRegionalSeries` = NULL,
    `oldInternSystem` = NULL,
    `oldInternSubstage` = NULL,
    `oldInternStage` = NULL,
    `oldInternSeries` = NULL,
    `oldInternErathem` = NULL,
    `oldInternEonothem` = NULL,
    `oldChronoName` = NULL,
    `chronoIdentifier` = NULL,
    `oldCertainty` = NULL,
    initialize = function(
                              `youngRegionalSubstage`,
                              `youngRegionalStage`,
                              `youngRegionalSeries`,
                              `youngDatingQualifier`,
                              `youngInternSystem`,
                              `youngInternSubstage`,
                              `youngInternStage`,
                              `youngInternSeries`,
                              `youngInternErathem`,
                              `youngInternEonothem`,
                              `youngChronoName`,
                              `youngCertainty`,
                              `oldDatingQualifier`,
                              `chronoPreferredFlag`,
                              `oldRegionalSubstage`,
                              `oldRegionalStage`,
                              `oldRegionalSeries`,
                              `oldInternSystem`,
                              `oldInternSubstage`,
                              `oldInternStage`,
                              `oldInternSeries`,
                              `oldInternErathem`,
                              `oldInternEonothem`,
                              `oldChronoName`,
                              `chronoIdentifier`,
                              `oldCertainty`) {
      if (!missing(`youngRegionalSubstage`)) {
        stopifnot(
          is.character(`youngRegionalSubstage`),
          length(`youngRegionalSubstage`) == 1
        )
        self[["youngRegionalSubstage"]] <- `youngRegionalSubstage`
      }
      if (!missing(`youngRegionalStage`)) {
        stopifnot(
          is.character(`youngRegionalStage`),
          length(`youngRegionalStage`) == 1
        )
        self[["youngRegionalStage"]] <- `youngRegionalStage`
      }
      if (!missing(`youngRegionalSeries`)) {
        stopifnot(
          is.character(`youngRegionalSeries`),
          length(`youngRegionalSeries`) == 1
        )
        self[["youngRegionalSeries"]] <- `youngRegionalSeries`
      }
      if (!missing(`youngDatingQualifier`)) {
        stopifnot(
          is.character(`youngDatingQualifier`),
          length(`youngDatingQualifier`) == 1
        )
        self[["youngDatingQualifier"]] <- `youngDatingQualifier`
      }
      if (!missing(`youngInternSystem`)) {
        stopifnot(
          is.character(`youngInternSystem`),
          length(`youngInternSystem`) == 1
        )
        self[["youngInternSystem"]] <- `youngInternSystem`
      }
      if (!missing(`youngInternSubstage`)) {
        stopifnot(
          is.character(`youngInternSubstage`),
          length(`youngInternSubstage`) == 1
        )
        self[["youngInternSubstage"]] <- `youngInternSubstage`
      }
      if (!missing(`youngInternStage`)) {
        stopifnot(
          is.character(`youngInternStage`),
          length(`youngInternStage`) == 1
        )
        self[["youngInternStage"]] <- `youngInternStage`
      }
      if (!missing(`youngInternSeries`)) {
        stopifnot(
          is.character(`youngInternSeries`),
          length(`youngInternSeries`) == 1
        )
        self[["youngInternSeries"]] <- `youngInternSeries`
      }
      if (!missing(`youngInternErathem`)) {
        stopifnot(
          is.character(`youngInternErathem`),
          length(`youngInternErathem`) == 1
        )
        self[["youngInternErathem"]] <- `youngInternErathem`
      }
      if (!missing(`youngInternEonothem`)) {
        stopifnot(
          is.character(`youngInternEonothem`),
          length(`youngInternEonothem`) == 1
        )
        self[["youngInternEonothem"]] <- `youngInternEonothem`
      }
      if (!missing(`youngChronoName`)) {
        stopifnot(
          is.character(`youngChronoName`),
          length(`youngChronoName`) == 1
        )
        self[["youngChronoName"]] <- `youngChronoName`
      }
      if (!missing(`youngCertainty`)) {
        stopifnot(
          is.character(`youngCertainty`),
          length(`youngCertainty`) == 1
        )
        self[["youngCertainty"]] <- `youngCertainty`
      }
      if (!missing(`oldDatingQualifier`)) {
        stopifnot(
          is.character(`oldDatingQualifier`),
          length(`oldDatingQualifier`) == 1
        )
        self[["oldDatingQualifier"]] <- `oldDatingQualifier`
      }
      if (!missing(`chronoPreferredFlag`)) {
        self[["chronoPreferredFlag"]] <- `chronoPreferredFlag`
      }
      if (!missing(`oldRegionalSubstage`)) {
        stopifnot(
          is.character(`oldRegionalSubstage`),
          length(`oldRegionalSubstage`) == 1
        )
        self[["oldRegionalSubstage"]] <- `oldRegionalSubstage`
      }
      if (!missing(`oldRegionalStage`)) {
        stopifnot(
          is.character(`oldRegionalStage`),
          length(`oldRegionalStage`) == 1
        )
        self[["oldRegionalStage"]] <- `oldRegionalStage`
      }
      if (!missing(`oldRegionalSeries`)) {
        stopifnot(
          is.character(`oldRegionalSeries`),
          length(`oldRegionalSeries`) == 1
        )
        self[["oldRegionalSeries"]] <- `oldRegionalSeries`
      }
      if (!missing(`oldInternSystem`)) {
        stopifnot(
          is.character(`oldInternSystem`),
          length(`oldInternSystem`) == 1
        )
        self[["oldInternSystem"]] <- `oldInternSystem`
      }
      if (!missing(`oldInternSubstage`)) {
        stopifnot(
          is.character(`oldInternSubstage`),
          length(`oldInternSubstage`) == 1
        )
        self[["oldInternSubstage"]] <- `oldInternSubstage`
      }
      if (!missing(`oldInternStage`)) {
        stopifnot(
          is.character(`oldInternStage`),
          length(`oldInternStage`) == 1
        )
        self[["oldInternStage"]] <- `oldInternStage`
      }
      if (!missing(`oldInternSeries`)) {
        stopifnot(
          is.character(`oldInternSeries`),
          length(`oldInternSeries`) == 1
        )
        self[["oldInternSeries"]] <- `oldInternSeries`
      }
      if (!missing(`oldInternErathem`)) {
        stopifnot(
          is.character(`oldInternErathem`),
          length(`oldInternErathem`) == 1
        )
        self[["oldInternErathem"]] <- `oldInternErathem`
      }
      if (!missing(`oldInternEonothem`)) {
        stopifnot(
          is.character(`oldInternEonothem`),
          length(`oldInternEonothem`) == 1
        )
        self[["oldInternEonothem"]] <- `oldInternEonothem`
      }
      if (!missing(`oldChronoName`)) {
        stopifnot(
          is.character(`oldChronoName`),
          length(`oldChronoName`) == 1
        )
        self[["oldChronoName"]] <- `oldChronoName`
      }
      if (!missing(`chronoIdentifier`)) {
        stopifnot(
          is.character(`chronoIdentifier`),
          length(`chronoIdentifier`) == 1
        )
        self[["chronoIdentifier"]] <- `chronoIdentifier`
      }
      if (!missing(`oldCertainty`)) {
        stopifnot(
          is.character(`oldCertainty`),
          length(`oldCertainty`) == 1
        )
        self[["oldCertainty"]] <- `oldCertainty`
      }
    },
    toList = function() {
      ChronoStratigraphyList <- list()
      if (!is.null(self[["youngRegionalSubstage"]])) {
        ChronoStratigraphyList[["youngRegionalSubstage"]] <-
          self[["youngRegionalSubstage"]]
      }
      if (!is.null(self[["youngRegionalStage"]])) {
        ChronoStratigraphyList[["youngRegionalStage"]] <-
          self[["youngRegionalStage"]]
      }
      if (!is.null(self[["youngRegionalSeries"]])) {
        ChronoStratigraphyList[["youngRegionalSeries"]] <-
          self[["youngRegionalSeries"]]
      }
      if (!is.null(self[["youngDatingQualifier"]])) {
        ChronoStratigraphyList[["youngDatingQualifier"]] <-
          self[["youngDatingQualifier"]]
      }
      if (!is.null(self[["youngInternSystem"]])) {
        ChronoStratigraphyList[["youngInternSystem"]] <-
          self[["youngInternSystem"]]
      }
      if (!is.null(self[["youngInternSubstage"]])) {
        ChronoStratigraphyList[["youngInternSubstage"]] <-
          self[["youngInternSubstage"]]
      }
      if (!is.null(self[["youngInternStage"]])) {
        ChronoStratigraphyList[["youngInternStage"]] <-
          self[["youngInternStage"]]
      }
      if (!is.null(self[["youngInternSeries"]])) {
        ChronoStratigraphyList[["youngInternSeries"]] <-
          self[["youngInternSeries"]]
      }
      if (!is.null(self[["youngInternErathem"]])) {
        ChronoStratigraphyList[["youngInternErathem"]] <-
          self[["youngInternErathem"]]
      }
      if (!is.null(self[["youngInternEonothem"]])) {
        ChronoStratigraphyList[["youngInternEonothem"]] <-
          self[["youngInternEonothem"]]
      }
      if (!is.null(self[["youngChronoName"]])) {
        ChronoStratigraphyList[["youngChronoName"]] <-
          self[["youngChronoName"]]
      }
      if (!is.null(self[["youngCertainty"]])) {
        ChronoStratigraphyList[["youngCertainty"]] <-
          self[["youngCertainty"]]
      }
      if (!is.null(self[["oldDatingQualifier"]])) {
        ChronoStratigraphyList[["oldDatingQualifier"]] <-
          self[["oldDatingQualifier"]]
      }
      if (!is.null(self[["chronoPreferredFlag"]])) {
        ChronoStratigraphyList[["chronoPreferredFlag"]] <-
          self[["chronoPreferredFlag"]]
      }
      if (!is.null(self[["oldRegionalSubstage"]])) {
        ChronoStratigraphyList[["oldRegionalSubstage"]] <-
          self[["oldRegionalSubstage"]]
      }
      if (!is.null(self[["oldRegionalStage"]])) {
        ChronoStratigraphyList[["oldRegionalStage"]] <-
          self[["oldRegionalStage"]]
      }
      if (!is.null(self[["oldRegionalSeries"]])) {
        ChronoStratigraphyList[["oldRegionalSeries"]] <-
          self[["oldRegionalSeries"]]
      }
      if (!is.null(self[["oldInternSystem"]])) {
        ChronoStratigraphyList[["oldInternSystem"]] <-
          self[["oldInternSystem"]]
      }
      if (!is.null(self[["oldInternSubstage"]])) {
        ChronoStratigraphyList[["oldInternSubstage"]] <-
          self[["oldInternSubstage"]]
      }
      if (!is.null(self[["oldInternStage"]])) {
        ChronoStratigraphyList[["oldInternStage"]] <-
          self[["oldInternStage"]]
      }
      if (!is.null(self[["oldInternSeries"]])) {
        ChronoStratigraphyList[["oldInternSeries"]] <-
          self[["oldInternSeries"]]
      }
      if (!is.null(self[["oldInternErathem"]])) {
        ChronoStratigraphyList[["oldInternErathem"]] <-
          self[["oldInternErathem"]]
      }
      if (!is.null(self[["oldInternEonothem"]])) {
        ChronoStratigraphyList[["oldInternEonothem"]] <-
          self[["oldInternEonothem"]]
      }
      if (!is.null(self[["oldChronoName"]])) {
        ChronoStratigraphyList[["oldChronoName"]] <-
          self[["oldChronoName"]]
      }
      if (!is.null(self[["chronoIdentifier"]])) {
        ChronoStratigraphyList[["chronoIdentifier"]] <-
          self[["chronoIdentifier"]]
      }
      if (!is.null(self[["oldCertainty"]])) {
        ChronoStratigraphyList[["oldCertainty"]] <-
          self[["oldCertainty"]]
      }
      ## omit empty nested lists in returned list
      ChronoStratigraphyList[vapply(
        ChronoStratigraphyList,
        length,
        FUN.VALUE = integer(1)
      ) > 0]
    },
    fromList = function(ChronoStratigraphyList,
                            typeMapping = NULL) {
      self[["youngRegionalSubstage"]] <-
        ChronoStratigraphyList[["youngRegionalSubstage"]]
      self[["youngRegionalStage"]] <-
        ChronoStratigraphyList[["youngRegionalStage"]]
      self[["youngRegionalSeries"]] <-
        ChronoStratigraphyList[["youngRegionalSeries"]]
      self[["youngDatingQualifier"]] <-
        ChronoStratigraphyList[["youngDatingQualifier"]]
      self[["youngInternSystem"]] <-
        ChronoStratigraphyList[["youngInternSystem"]]
      self[["youngInternSubstage"]] <-
        ChronoStratigraphyList[["youngInternSubstage"]]
      self[["youngInternStage"]] <-
        ChronoStratigraphyList[["youngInternStage"]]
      self[["youngInternSeries"]] <-
        ChronoStratigraphyList[["youngInternSeries"]]
      self[["youngInternErathem"]] <-
        ChronoStratigraphyList[["youngInternErathem"]]
      self[["youngInternEonothem"]] <-
        ChronoStratigraphyList[["youngInternEonothem"]]
      self[["youngChronoName"]] <-
        ChronoStratigraphyList[["youngChronoName"]]
      self[["youngCertainty"]] <-
        ChronoStratigraphyList[["youngCertainty"]]
      self[["oldDatingQualifier"]] <-
        ChronoStratigraphyList[["oldDatingQualifier"]]
      self[["chronoPreferredFlag"]] <-
        ChronoStratigraphyList[["chronoPreferredFlag"]]
      self[["oldRegionalSubstage"]] <-
        ChronoStratigraphyList[["oldRegionalSubstage"]]
      self[["oldRegionalStage"]] <-
        ChronoStratigraphyList[["oldRegionalStage"]]
      self[["oldRegionalSeries"]] <-
        ChronoStratigraphyList[["oldRegionalSeries"]]
      self[["oldInternSystem"]] <-
        ChronoStratigraphyList[["oldInternSystem"]]
      self[["oldInternSubstage"]] <-
        ChronoStratigraphyList[["oldInternSubstage"]]
      self[["oldInternStage"]] <-
        ChronoStratigraphyList[["oldInternStage"]]
      self[["oldInternSeries"]] <-
        ChronoStratigraphyList[["oldInternSeries"]]
      self[["oldInternErathem"]] <-
        ChronoStratigraphyList[["oldInternErathem"]]
      self[["oldInternEonothem"]] <-
        ChronoStratigraphyList[["oldInternEonothem"]]
      self[["oldChronoName"]] <-
        ChronoStratigraphyList[["oldChronoName"]]
      self[["chronoIdentifier"]] <-
        ChronoStratigraphyList[["chronoIdentifier"]]
      self[["oldCertainty"]] <-
        ChronoStratigraphyList[["oldCertainty"]]
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
    fromJSONString = function(ChronoStratigraphyJson,
                                  typeMapping = NULL) {
      ChronoStratigraphyList <- jsonlite::fromJSON(
        ChronoStratigraphyJson,
        simplifyVector = FALSE
      )
      self <- self$fromList(ChronoStratigraphyList)
      invisible(self)
    },
    print = function(...) {
      ## print class name
      cat("<ChronoStratigraphy>\n")
      ## print all members with values
      cat("Fields:\n")
      if (typeof(self$youngRegionalSubstage) == "environment") {
        cat("\tyoungRegionalSubstage:\tobject of class", paste0("<", class(self$youngRegionalSubstage)[1], ">"), "\n")
      }
      else if (typeof(self$youngRegionalSubstage) == "list") {
        cat("\tyoungRegionalSubstage:\tlist of length", length(self$youngRegionalSubstage), "\n")
      }
      else {
        cat("\tyoungRegionalSubstage:\t", self$youngRegionalSubstage, "\n")
      }
      if (typeof(self$youngRegionalStage) == "environment") {
        cat("\tyoungRegionalStage:\tobject of class", paste0("<", class(self$youngRegionalStage)[1], ">"), "\n")
      }
      else if (typeof(self$youngRegionalStage) == "list") {
        cat("\tyoungRegionalStage:\tlist of length", length(self$youngRegionalStage), "\n")
      }
      else {
        cat("\tyoungRegionalStage:\t", self$youngRegionalStage, "\n")
      }
      if (typeof(self$youngRegionalSeries) == "environment") {
        cat("\tyoungRegionalSeries:\tobject of class", paste0("<", class(self$youngRegionalSeries)[1], ">"), "\n")
      }
      else if (typeof(self$youngRegionalSeries) == "list") {
        cat("\tyoungRegionalSeries:\tlist of length", length(self$youngRegionalSeries), "\n")
      }
      else {
        cat("\tyoungRegionalSeries:\t", self$youngRegionalSeries, "\n")
      }
      if (typeof(self$youngDatingQualifier) == "environment") {
        cat("\tyoungDatingQualifier:\tobject of class", paste0("<", class(self$youngDatingQualifier)[1], ">"), "\n")
      }
      else if (typeof(self$youngDatingQualifier) == "list") {
        cat("\tyoungDatingQualifier:\tlist of length", length(self$youngDatingQualifier), "\n")
      }
      else {
        cat("\tyoungDatingQualifier:\t", self$youngDatingQualifier, "\n")
      }
      if (typeof(self$youngInternSystem) == "environment") {
        cat("\tyoungInternSystem:\tobject of class", paste0("<", class(self$youngInternSystem)[1], ">"), "\n")
      }
      else if (typeof(self$youngInternSystem) == "list") {
        cat("\tyoungInternSystem:\tlist of length", length(self$youngInternSystem), "\n")
      }
      else {
        cat("\tyoungInternSystem:\t", self$youngInternSystem, "\n")
      }
      if (typeof(self$youngInternSubstage) == "environment") {
        cat("\tyoungInternSubstage:\tobject of class", paste0("<", class(self$youngInternSubstage)[1], ">"), "\n")
      }
      else if (typeof(self$youngInternSubstage) == "list") {
        cat("\tyoungInternSubstage:\tlist of length", length(self$youngInternSubstage), "\n")
      }
      else {
        cat("\tyoungInternSubstage:\t", self$youngInternSubstage, "\n")
      }
      if (typeof(self$youngInternStage) == "environment") {
        cat("\tyoungInternStage:\tobject of class", paste0("<", class(self$youngInternStage)[1], ">"), "\n")
      }
      else if (typeof(self$youngInternStage) == "list") {
        cat("\tyoungInternStage:\tlist of length", length(self$youngInternStage), "\n")
      }
      else {
        cat("\tyoungInternStage:\t", self$youngInternStage, "\n")
      }
      if (typeof(self$youngInternSeries) == "environment") {
        cat("\tyoungInternSeries:\tobject of class", paste0("<", class(self$youngInternSeries)[1], ">"), "\n")
      }
      else if (typeof(self$youngInternSeries) == "list") {
        cat("\tyoungInternSeries:\tlist of length", length(self$youngInternSeries), "\n")
      }
      else {
        cat("\tyoungInternSeries:\t", self$youngInternSeries, "\n")
      }
      if (typeof(self$youngInternErathem) == "environment") {
        cat("\tyoungInternErathem:\tobject of class", paste0("<", class(self$youngInternErathem)[1], ">"), "\n")
      }
      else if (typeof(self$youngInternErathem) == "list") {
        cat("\tyoungInternErathem:\tlist of length", length(self$youngInternErathem), "\n")
      }
      else {
        cat("\tyoungInternErathem:\t", self$youngInternErathem, "\n")
      }
      if (typeof(self$youngInternEonothem) == "environment") {
        cat("\tyoungInternEonothem:\tobject of class", paste0("<", class(self$youngInternEonothem)[1], ">"), "\n")
      }
      else if (typeof(self$youngInternEonothem) == "list") {
        cat("\tyoungInternEonothem:\tlist of length", length(self$youngInternEonothem), "\n")
      }
      else {
        cat("\tyoungInternEonothem:\t", self$youngInternEonothem, "\n")
      }
      if (typeof(self$youngChronoName) == "environment") {
        cat("\tyoungChronoName:\tobject of class", paste0("<", class(self$youngChronoName)[1], ">"), "\n")
      }
      else if (typeof(self$youngChronoName) == "list") {
        cat("\tyoungChronoName:\tlist of length", length(self$youngChronoName), "\n")
      }
      else {
        cat("\tyoungChronoName:\t", self$youngChronoName, "\n")
      }
      if (typeof(self$youngCertainty) == "environment") {
        cat("\tyoungCertainty:\tobject of class", paste0("<", class(self$youngCertainty)[1], ">"), "\n")
      }
      else if (typeof(self$youngCertainty) == "list") {
        cat("\tyoungCertainty:\tlist of length", length(self$youngCertainty), "\n")
      }
      else {
        cat("\tyoungCertainty:\t", self$youngCertainty, "\n")
      }
      if (typeof(self$oldDatingQualifier) == "environment") {
        cat("\toldDatingQualifier:\tobject of class", paste0("<", class(self$oldDatingQualifier)[1], ">"), "\n")
      }
      else if (typeof(self$oldDatingQualifier) == "list") {
        cat("\toldDatingQualifier:\tlist of length", length(self$oldDatingQualifier), "\n")
      }
      else {
        cat("\toldDatingQualifier:\t", self$oldDatingQualifier, "\n")
      }
      if (typeof(self$chronoPreferredFlag) == "environment") {
        cat("\tchronoPreferredFlag:\tobject of class", paste0("<", class(self$chronoPreferredFlag)[1], ">"), "\n")
      }
      else if (typeof(self$chronoPreferredFlag) == "list") {
        cat("\tchronoPreferredFlag:\tlist of length", length(self$chronoPreferredFlag), "\n")
      }
      else {
        cat("\tchronoPreferredFlag:\t", self$chronoPreferredFlag, "\n")
      }
      if (typeof(self$oldRegionalSubstage) == "environment") {
        cat("\toldRegionalSubstage:\tobject of class", paste0("<", class(self$oldRegionalSubstage)[1], ">"), "\n")
      }
      else if (typeof(self$oldRegionalSubstage) == "list") {
        cat("\toldRegionalSubstage:\tlist of length", length(self$oldRegionalSubstage), "\n")
      }
      else {
        cat("\toldRegionalSubstage:\t", self$oldRegionalSubstage, "\n")
      }
      if (typeof(self$oldRegionalStage) == "environment") {
        cat("\toldRegionalStage:\tobject of class", paste0("<", class(self$oldRegionalStage)[1], ">"), "\n")
      }
      else if (typeof(self$oldRegionalStage) == "list") {
        cat("\toldRegionalStage:\tlist of length", length(self$oldRegionalStage), "\n")
      }
      else {
        cat("\toldRegionalStage:\t", self$oldRegionalStage, "\n")
      }
      if (typeof(self$oldRegionalSeries) == "environment") {
        cat("\toldRegionalSeries:\tobject of class", paste0("<", class(self$oldRegionalSeries)[1], ">"), "\n")
      }
      else if (typeof(self$oldRegionalSeries) == "list") {
        cat("\toldRegionalSeries:\tlist of length", length(self$oldRegionalSeries), "\n")
      }
      else {
        cat("\toldRegionalSeries:\t", self$oldRegionalSeries, "\n")
      }
      if (typeof(self$oldInternSystem) == "environment") {
        cat("\toldInternSystem:\tobject of class", paste0("<", class(self$oldInternSystem)[1], ">"), "\n")
      }
      else if (typeof(self$oldInternSystem) == "list") {
        cat("\toldInternSystem:\tlist of length", length(self$oldInternSystem), "\n")
      }
      else {
        cat("\toldInternSystem:\t", self$oldInternSystem, "\n")
      }
      if (typeof(self$oldInternSubstage) == "environment") {
        cat("\toldInternSubstage:\tobject of class", paste0("<", class(self$oldInternSubstage)[1], ">"), "\n")
      }
      else if (typeof(self$oldInternSubstage) == "list") {
        cat("\toldInternSubstage:\tlist of length", length(self$oldInternSubstage), "\n")
      }
      else {
        cat("\toldInternSubstage:\t", self$oldInternSubstage, "\n")
      }
      if (typeof(self$oldInternStage) == "environment") {
        cat("\toldInternStage:\tobject of class", paste0("<", class(self$oldInternStage)[1], ">"), "\n")
      }
      else if (typeof(self$oldInternStage) == "list") {
        cat("\toldInternStage:\tlist of length", length(self$oldInternStage), "\n")
      }
      else {
        cat("\toldInternStage:\t", self$oldInternStage, "\n")
      }
      if (typeof(self$oldInternSeries) == "environment") {
        cat("\toldInternSeries:\tobject of class", paste0("<", class(self$oldInternSeries)[1], ">"), "\n")
      }
      else if (typeof(self$oldInternSeries) == "list") {
        cat("\toldInternSeries:\tlist of length", length(self$oldInternSeries), "\n")
      }
      else {
        cat("\toldInternSeries:\t", self$oldInternSeries, "\n")
      }
      if (typeof(self$oldInternErathem) == "environment") {
        cat("\toldInternErathem:\tobject of class", paste0("<", class(self$oldInternErathem)[1], ">"), "\n")
      }
      else if (typeof(self$oldInternErathem) == "list") {
        cat("\toldInternErathem:\tlist of length", length(self$oldInternErathem), "\n")
      }
      else {
        cat("\toldInternErathem:\t", self$oldInternErathem, "\n")
      }
      if (typeof(self$oldInternEonothem) == "environment") {
        cat("\toldInternEonothem:\tobject of class", paste0("<", class(self$oldInternEonothem)[1], ">"), "\n")
      }
      else if (typeof(self$oldInternEonothem) == "list") {
        cat("\toldInternEonothem:\tlist of length", length(self$oldInternEonothem), "\n")
      }
      else {
        cat("\toldInternEonothem:\t", self$oldInternEonothem, "\n")
      }
      if (typeof(self$oldChronoName) == "environment") {
        cat("\toldChronoName:\tobject of class", paste0("<", class(self$oldChronoName)[1], ">"), "\n")
      }
      else if (typeof(self$oldChronoName) == "list") {
        cat("\toldChronoName:\tlist of length", length(self$oldChronoName), "\n")
      }
      else {
        cat("\toldChronoName:\t", self$oldChronoName, "\n")
      }
      if (typeof(self$chronoIdentifier) == "environment") {
        cat("\tchronoIdentifier:\tobject of class", paste0("<", class(self$chronoIdentifier)[1], ">"), "\n")
      }
      else if (typeof(self$chronoIdentifier) == "list") {
        cat("\tchronoIdentifier:\tlist of length", length(self$chronoIdentifier), "\n")
      }
      else {
        cat("\tchronoIdentifier:\t", self$chronoIdentifier, "\n")
      }
      if (typeof(self$oldCertainty) == "environment") {
        cat("\toldCertainty:\tobject of class", paste0("<", class(self$oldCertainty)[1], ">"), "\n")
      }
      else if (typeof(self$oldCertainty) == "list") {
        cat("\toldCertainty:\tlist of length", length(self$oldCertainty), "\n")
      }
      else {
        cat("\toldCertainty:\t", self$oldCertainty, "\n")
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
