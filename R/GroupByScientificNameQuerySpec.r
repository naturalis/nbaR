# Netherlands Biodiversity Api
#
# Access to the digitised Natural History collection at the Naturalis Biodiversity Center
#
# OpenAPI spec version: v2
# Contact: support@naturalis.nl
# Generated by: https://github.com/swagger-api/swagger-codegen.git


#' GroupByScientificNameQuerySpec Class
#'
#' @field constantScore
#' @field fields
#' @field conditions
#' @field logicalOperator
#' @field sortFields
#' @field from
#' @field size
#' @field groupSort
#' @field groupFilter
#' @field specimensFrom
#' @field specimensSize
#' @field specimensSortFields
#' @field noTaxa
#'
#' @importFrom R6 R6Class
#' @importFrom jsonlite fromJSON toJSON
#' @export
GroupByScientificNameQuerySpec <- R6::R6Class(
  "GroupByScientificNameQuerySpec",
  public = list(
    `constantScore` = NULL,
    `fields` = NULL,
    `conditions` = NULL,
    `logicalOperator` = NULL,
    `sortFields` = NULL,
    `from` = NULL,
    `size` = NULL,
    `groupSort` = NULL,
    `groupFilter` = NULL,
    `specimensFrom` = NULL,
    `specimensSize` = NULL,
    `specimensSortFields` = NULL,
    `noTaxa` = NULL,
    initialize = function(`constantScore`, `fields`, `conditions`, `logicalOperator`, `sortFields`, `from`, `size`, `groupSort`, `groupFilter`, `specimensFrom`, `specimensSize`, `specimensSortFields`, `noTaxa`) {
      if (!missing(`constantScore`)) {
        self[["constantScore"]] <- `constantScore`
      }
      if (!missing(`fields`)) {
        stopifnot(is.list(`fields`), length(`fields`) != 0)
        lapply(`fields`, function(x) stopifnot(is.character(x)))
        self[["fields"]] <- `fields`
      }
      if (!missing(`conditions`)) {
        stopifnot(is.list(`conditions`), length(`conditions`) != 0)
        lapply(`conditions`, function(x) stopifnot(R6::is.R6(x)))
        self[["conditions"]] <- `conditions`
      }
      if (!missing(`logicalOperator`)) {
        stopifnot(is.character(`logicalOperator`), length(`logicalOperator`) == 1)
        self[["logicalOperator"]] <- `logicalOperator`
      }
      if (!missing(`sortFields`)) {
        stopifnot(is.list(`sortFields`), length(`sortFields`) != 0)
        lapply(`sortFields`, function(x) stopifnot(R6::is.R6(x)))
        self[["sortFields"]] <- `sortFields`
      }
      if (!missing(`from`)) {
        stopifnot(is.numeric(`from`), length(`from`) == 1)
        self[["from"]] <- `from`
      }
      if (!missing(`size`)) {
        stopifnot(is.numeric(`size`), length(`size`) == 1)
        self[["size"]] <- `size`
      }
      if (!missing(`groupSort`)) {
        stopifnot(is.character(`groupSort`), length(`groupSort`) == 1)
        self[["groupSort"]] <- `groupSort`
      }
      if (!missing(`groupFilter`)) {
        stopifnot(R6::is.R6(`groupFilter`))
        self[["groupFilter"]] <- `groupFilter`
      }
      if (!missing(`specimensFrom`)) {
        stopifnot(is.numeric(`specimensFrom`), length(`specimensFrom`) == 1)
        self[["specimensFrom"]] <- `specimensFrom`
      }
      if (!missing(`specimensSize`)) {
        stopifnot(is.numeric(`specimensSize`), length(`specimensSize`) == 1)
        self[["specimensSize"]] <- `specimensSize`
      }
      if (!missing(`specimensSortFields`)) {
        stopifnot(is.list(`specimensSortFields`), length(`specimensSortFields`) != 0)
        lapply(`specimensSortFields`, function(x) stopifnot(R6::is.R6(x)))
        self[["specimensSortFields"]] <- `specimensSortFields`
      }
      if (!missing(`noTaxa`)) {
        self[["noTaxa"]] <- `noTaxa`
      }
    },

    toList = function() {
      GroupByScientificNameQuerySpecList <- list()
      if (!is.null(self[["constantScore"]])) {
        GroupByScientificNameQuerySpecList[["constantScore"]] <- self[["constantScore"]]
      }
      if (!is.null(self[["fields"]])) {
        GroupByScientificNameQuerySpecList[["fields"]] <- self[["fields"]]
      }
      if (!is.null(self[["conditions"]])) {
        GroupByScientificNameQuerySpecList[["conditions"]] <- lapply(self[["conditions"]], function(x) x$toList())
      }
      if (!is.null(self[["logicalOperator"]])) {
        GroupByScientificNameQuerySpecList[["logicalOperator"]] <- self[["logicalOperator"]]
      }
      if (!is.null(self[["sortFields"]])) {
        GroupByScientificNameQuerySpecList[["sortFields"]] <- lapply(self[["sortFields"]], function(x) x$toList())
      }
      if (!is.null(self[["from"]])) {
        GroupByScientificNameQuerySpecList[["from"]] <- self[["from"]]
      }
      if (!is.null(self[["size"]])) {
        GroupByScientificNameQuerySpecList[["size"]] <- self[["size"]]
      }
      if (!is.null(self[["groupSort"]])) {
        GroupByScientificNameQuerySpecList[["groupSort"]] <- self[["groupSort"]]
      }
      if (!is.null(self[["groupFilter"]])) {
        GroupByScientificNameQuerySpecList[["groupFilter"]] <- self[["groupFilter"]]$toList()
      }
      if (!is.null(self[["specimensFrom"]])) {
        GroupByScientificNameQuerySpecList[["specimensFrom"]] <- self[["specimensFrom"]]
      }
      if (!is.null(self[["specimensSize"]])) {
        GroupByScientificNameQuerySpecList[["specimensSize"]] <- self[["specimensSize"]]
      }
      if (!is.null(self[["specimensSortFields"]])) {
        GroupByScientificNameQuerySpecList[["specimensSortFields"]] <- lapply(self[["specimensSortFields"]], function(x) x$toList())
      }
      if (!is.null(self[["noTaxa"]])) {
        GroupByScientificNameQuerySpecList[["noTaxa"]] <- self[["noTaxa"]]
      }
      ## omit empty nested lists in returned list
      GroupByScientificNameQuerySpecList[sapply(GroupByScientificNameQuerySpecList, length) > 0]
    },

    fromList = function(GroupByScientificNameQuerySpecList, typeMapping = NULL) {
      if (is.null(typeMapping[["constantScore"]])) {
        self[["constantScore"]] <- GroupByScientificNameQuerySpecList[["constantScore"]]
      } else {
        obj <- eval(parse(text = paste0(typeMapping[["constantScore"]], "$new()")))
        self[["constantScore"]] <- obj$fromList(GroupByScientificNameQuerySpecList[["constantScore"]], typeMapping = typeMapping)
      }
      if (is.null(typeMapping[["fields"]])) {
        self[["fields"]] <- GroupByScientificNameQuerySpecList[["fields"]]
      } else {
        obj <- eval(parse(text = paste0(typeMapping[["fields"]], "$new()")))
        self[["fields"]] <- obj$fromList(GroupByScientificNameQuerySpecList[["fields"]], typeMapping = typeMapping)
      }
      self[["conditions"]] <- lapply(
        GroupByScientificNameQuerySpecList[["conditions"]],
        function(x) QueryCondition$new()$fromList(x, typeMapping = typeMapping)
      )
      if (is.null(typeMapping[["logicalOperator"]])) {
        self[["logicalOperator"]] <- GroupByScientificNameQuerySpecList[["logicalOperator"]]
      } else {
        obj <- eval(parse(text = paste0(typeMapping[["logicalOperator"]], "$new()")))
        self[["logicalOperator"]] <- obj$fromList(GroupByScientificNameQuerySpecList[["logicalOperator"]], typeMapping = typeMapping)
      }
      self[["sortFields"]] <- lapply(
        GroupByScientificNameQuerySpecList[["sortFields"]],
        function(x) SortField$new()$fromList(x, typeMapping = typeMapping)
      )
      if (is.null(typeMapping[["from"]])) {
        self[["from"]] <- GroupByScientificNameQuerySpecList[["from"]]
      } else {
        obj <- eval(parse(text = paste0(typeMapping[["from"]], "$new()")))
        self[["from"]] <- obj$fromList(GroupByScientificNameQuerySpecList[["from"]], typeMapping = typeMapping)
      }
      if (is.null(typeMapping[["size"]])) {
        self[["size"]] <- GroupByScientificNameQuerySpecList[["size"]]
      } else {
        obj <- eval(parse(text = paste0(typeMapping[["size"]], "$new()")))
        self[["size"]] <- obj$fromList(GroupByScientificNameQuerySpecList[["size"]], typeMapping = typeMapping)
      }
      if (is.null(typeMapping[["groupSort"]])) {
        self[["groupSort"]] <- GroupByScientificNameQuerySpecList[["groupSort"]]
      } else {
        obj <- eval(parse(text = paste0(typeMapping[["groupSort"]], "$new()")))
        self[["groupSort"]] <- obj$fromList(GroupByScientificNameQuerySpecList[["groupSort"]], typeMapping = typeMapping)
      }
      if (is.null(typeMapping[["groupFilter"]])) {
        self[["groupFilter"]] <- Filter$new()$fromList(GroupByScientificNameQuerySpecList[["groupFilter"]], typeMapping = typeMapping)
      } else {
        obj <- eval(parse(text = paste0(typeMapping[["groupFilter"]], "$new()")))
        self[["groupFilter"]] <- obj$fromList(GroupByScientificNameQuerySpecList[["groupFilter"]], typeMapping = typeMapping)
      }
      if (is.null(typeMapping[["specimensFrom"]])) {
        self[["specimensFrom"]] <- GroupByScientificNameQuerySpecList[["specimensFrom"]]
      } else {
        obj <- eval(parse(text = paste0(typeMapping[["specimensFrom"]], "$new()")))
        self[["specimensFrom"]] <- obj$fromList(GroupByScientificNameQuerySpecList[["specimensFrom"]], typeMapping = typeMapping)
      }
      if (is.null(typeMapping[["specimensSize"]])) {
        self[["specimensSize"]] <- GroupByScientificNameQuerySpecList[["specimensSize"]]
      } else {
        obj <- eval(parse(text = paste0(typeMapping[["specimensSize"]], "$new()")))
        self[["specimensSize"]] <- obj$fromList(GroupByScientificNameQuerySpecList[["specimensSize"]], typeMapping = typeMapping)
      }
      self[["specimensSortFields"]] <- lapply(
        GroupByScientificNameQuerySpecList[["specimensSortFields"]],
        function(x) SortField$new()$fromList(x, typeMapping = typeMapping)
      )
      if (is.null(typeMapping[["noTaxa"]])) {
        self[["noTaxa"]] <- GroupByScientificNameQuerySpecList[["noTaxa"]]
      } else {
        obj <- eval(parse(text = paste0(typeMapping[["noTaxa"]], "$new()")))
        self[["noTaxa"]] <- obj$fromList(GroupByScientificNameQuerySpecList[["noTaxa"]], typeMapping = typeMapping)
      }
      invisible(self)
    },

    toJSONString = function(pretty = T) {
      jsonlite::toJSON(self$toList(), simplifyVector = T, auto_unbox = T, pretty = pretty)
    },

    fromJSONString = function(GroupByScientificNameQuerySpecJson, typeMapping = NULL) {
      GroupByScientificNameQuerySpecList <- jsonlite::fromJSON(GroupByScientificNameQuerySpecJson, simplifyVector = F)
      if (is.null(typeMapping[["constantScore"]])) {
        self[["constantScore"]] <- GroupByScientificNameQuerySpecList[["constantScore"]]
      } else {
        obj <- eval(parse(text = paste0(typeMapping[["constantScore"]], "$new()")))
        self[["constantScore"]] <- obj$fromJSONString(jsonlite::toJSON(GroupByScientificNameQuerySpecList[["constantScore"]], auto_unbox = TRUE), typeMapping = typeMapping)
      }
      if (is.null(typeMapping[["fields"]])) {
        self[["fields"]] <- GroupByScientificNameQuerySpecList[["fields"]]
      } else {
        obj <- eval(parse(text = paste0(typeMapping[["fields"]], "$new()")))
        self[["fields"]] <- obj$fromJSONString(jsonlite::toJSON(GroupByScientificNameQuerySpecList[["fields"]], auto_unbox = TRUE), typeMapping = typeMapping)
      }
      self[["conditions"]] <- lapply(
        GroupByScientificNameQuerySpecList[["conditions"]],
        function(x) QueryCondition$new()$fromJSONString(jsonlite::toJSON(x, auto_unbox = TRUE), typeMapping = typeMapping)
      )
      if (is.null(typeMapping[["logicalOperator"]])) {
        self[["logicalOperator"]] <- GroupByScientificNameQuerySpecList[["logicalOperator"]]
      } else {
        obj <- eval(parse(text = paste0(typeMapping[["logicalOperator"]], "$new()")))
        self[["logicalOperator"]] <- obj$fromJSONString(jsonlite::toJSON(GroupByScientificNameQuerySpecList[["logicalOperator"]], auto_unbox = TRUE), typeMapping = typeMapping)
      }
      self[["sortFields"]] <- lapply(
        GroupByScientificNameQuerySpecList[["sortFields"]],
        function(x) SortField$new()$fromJSONString(jsonlite::toJSON(x, auto_unbox = TRUE), typeMapping = typeMapping)
      )
      if (is.null(typeMapping[["from"]])) {
        self[["from"]] <- GroupByScientificNameQuerySpecList[["from"]]
      } else {
        obj <- eval(parse(text = paste0(typeMapping[["from"]], "$new()")))
        self[["from"]] <- obj$fromJSONString(jsonlite::toJSON(GroupByScientificNameQuerySpecList[["from"]], auto_unbox = TRUE), typeMapping = typeMapping)
      }
      if (is.null(typeMapping[["size"]])) {
        self[["size"]] <- GroupByScientificNameQuerySpecList[["size"]]
      } else {
        obj <- eval(parse(text = paste0(typeMapping[["size"]], "$new()")))
        self[["size"]] <- obj$fromJSONString(jsonlite::toJSON(GroupByScientificNameQuerySpecList[["size"]], auto_unbox = TRUE), typeMapping = typeMapping)
      }
      if (is.null(typeMapping[["groupSort"]])) {
        self[["groupSort"]] <- GroupByScientificNameQuerySpecList[["groupSort"]]
      } else {
        obj <- eval(parse(text = paste0(typeMapping[["groupSort"]], "$new()")))
        self[["groupSort"]] <- obj$fromJSONString(jsonlite::toJSON(GroupByScientificNameQuerySpecList[["groupSort"]], auto_unbox = TRUE), typeMapping = typeMapping)
      }
      if (is.null(typeMapping[["groupFilter"]])) {
        self[["groupFilter"]] <- Filter$new()$fromJSONString(jsonlite::toJSON(GroupByScientificNameQuerySpecList[["groupFilter"]], auto_unbox = TRUE), typeMapping = typeMapping)
      } else {
        obj <- eval(parse(text = paste0(typeMapping[["groupFilter"]], "$new()")))
        self[["groupFilter"]] <- obj$fromJSONString(jsonlite::toJSON(GroupByScientificNameQuerySpecList[["groupFilter"]], auto_unbox = TRUE), typeMapping = typeMapping)
      }
      if (is.null(typeMapping[["specimensFrom"]])) {
        self[["specimensFrom"]] <- GroupByScientificNameQuerySpecList[["specimensFrom"]]
      } else {
        obj <- eval(parse(text = paste0(typeMapping[["specimensFrom"]], "$new()")))
        self[["specimensFrom"]] <- obj$fromJSONString(jsonlite::toJSON(GroupByScientificNameQuerySpecList[["specimensFrom"]], auto_unbox = TRUE), typeMapping = typeMapping)
      }
      if (is.null(typeMapping[["specimensSize"]])) {
        self[["specimensSize"]] <- GroupByScientificNameQuerySpecList[["specimensSize"]]
      } else {
        obj <- eval(parse(text = paste0(typeMapping[["specimensSize"]], "$new()")))
        self[["specimensSize"]] <- obj$fromJSONString(jsonlite::toJSON(GroupByScientificNameQuerySpecList[["specimensSize"]], auto_unbox = TRUE), typeMapping = typeMapping)
      }
      self[["specimensSortFields"]] <- lapply(
        GroupByScientificNameQuerySpecList[["specimensSortFields"]],
        function(x) SortField$new()$fromJSONString(jsonlite::toJSON(x, auto_unbox = TRUE), typeMapping = typeMapping)
      )
      if (is.null(typeMapping[["noTaxa"]])) {
        self[["noTaxa"]] <- GroupByScientificNameQuerySpecList[["noTaxa"]]
      } else {
        obj <- eval(parse(text = paste0(typeMapping[["noTaxa"]], "$new()")))
        self[["noTaxa"]] <- obj$fromJSONString(jsonlite::toJSON(GroupByScientificNameQuerySpecList[["noTaxa"]], auto_unbox = TRUE), typeMapping = typeMapping)
      }
      invisible(self)
    }
  )
)
