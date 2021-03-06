# Netherlands Biodiversity API
#
# Access to the digitised Natural History collection at the Naturalis Biodiversity Center
#
# OpenAPI spec version: v2
# Contact: support@naturalis.nl
# Generated by: https://github.com/swagger-api/swagger-codegen.git

#'
#' @docType class
#'
#' @format R6 class
#'
#' @usage
#' # Organization$new()
#'
#' @format
#' R6 class
#'
#' @title Organization Class
#'
#' @description
#' For more information on the NBA object model, please refer to the
#' official NBA documentation at
#' \href{https://docs.biodiversitydata.nl}{https://docs.biodiversitydata.nl} and
#' the NBA model and endpoints reference at
#' \href{https://docs.biodiversitydata.nl/endpoints-reference}{https://docs.biodiversitydata.nl/endpoints-reference}.
#'
#' @details Model class for Organization objects.
#'
#'
#' @field agentText  character
#'
#' @field name  character
#'
#'
#'
#' @section Methods:
#' \describe{
#'
#' \item{\code{$new()}}{
#'
#'   Constructor Organization object.
#'
#' }
#' \item{\code{$fromList(OrganizationList)}}{
#'
#'   Create Organization object from list.
#'
#' }
#'
#' \item{\code{$toList()}}{
#'
#'   Get list representation of Organization.
#'
#' }
#' \item{\code{fromJSONString(OrganizationJson)}}{
#'
#'   Create Organization object from JSON.
#'
#' }
#' \item{\code{toJSONString(pretty=TRUE)}}{
#'
#'   Get JSON representation of Organization.
#'
#' }
#' }
#' @importFrom R6 R6Class
#' @importFrom jsonlite fromJSON toJSON
#' @export
Organization <- R6::R6Class(
  "Organization",
  public = list(
    `agentText` = NULL,
    `name` = NULL,
    initialize = function(
                              `agentText`,
                              `name`) {
      if (!missing(`agentText`)) {
        stopifnot(
          is.character(`agentText`),
          length(`agentText`) == 1
        )
        self[["agentText"]] <- `agentText`
      }
      if (!missing(`name`)) {
        stopifnot(
          is.character(`name`),
          length(`name`) == 1
        )
        self[["name"]] <- `name`
      }
    },
    toList = function() {
      OrganizationList <- list()
      if (!is.null(self[["agentText"]])) {
        OrganizationList[["agentText"]] <-
          self[["agentText"]]
      }
      if (!is.null(self[["name"]])) {
        OrganizationList[["name"]] <-
          self[["name"]]
      }
      ## omit empty nested lists in returned list
      OrganizationList[vapply(
        OrganizationList,
        length,
        FUN.VALUE = integer(1)
      ) > 0]
    },
    fromList = function(OrganizationList,
                            typeMapping = NULL) {
      self[["agentText"]] <-
        OrganizationList[["agentText"]]
      self[["name"]] <-
        OrganizationList[["name"]]
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
    fromJSONString = function(OrganizationJson,
                                  typeMapping = NULL) {
      OrganizationList <- jsonlite::fromJSON(
        OrganizationJson,
        simplifyVector = FALSE
      )
      self <- self$fromList(OrganizationList)
      invisible(self)
    },
    print = function(...) {
      ## print class name
      cat("<Organization>\n")
      ## print all members with values
      cat("Fields:\n")
      if (typeof(self$agentText) == "environment") {
        cat("\tagentText:\tobject of class", paste0("<", class(self$agentText)[1], ">"), "\n")
      }
      else if (typeof(self$agentText) == "list") {
        cat("\tagentText:\tlist of length", length(self$agentText), "\n")
      }
      else {
        cat("\tagentText:\t", self$agentText, "\n")
      }
      if (typeof(self$name) == "environment") {
        cat("\tname:\tobject of class", paste0("<", class(self$name)[1], ">"), "\n")
      }
      else if (typeof(self$name) == "list") {
        cat("\tname:\tlist of length", length(self$name), "\n")
      }
      else {
        cat("\tname:\t", self$name, "\n")
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
