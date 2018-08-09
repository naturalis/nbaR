# Netherlands Biodiversity API
#
# Access to the digitised Natural History collection at the Naturalis Biodiversity Center
#
# OpenAPI spec version: v2
# Contact: support@naturalis.nl
# Generated by: https://github.com/swagger-api/swagger-codegen.git


#' QueryCondition Class
#'
#' @field not
#' @field field
#' @field operator
#' @field value
#' @field and
#' @field or
#' @field constantScore
#' @field boost
#'
#' @importFrom R6 R6Class
#' @importFrom jsonlite fromJSON toJSON
#' @export
QueryCondition <- R6::R6Class(
  "QueryCondition",
  public = list(
    `not` = NULL,
    `field` = NULL,
    `operator` = NULL,
    `value` = NULL,
    `and` = NULL,
    `or` = NULL,
    `constantScore` = NULL,
    `boost` = NULL,
    initialize = function(
                              `not`,
                              `field`,
                              `operator`,
                              `value`,
                              `and`,
                              `or`,
                              `constantScore`,
                              `boost`) {
      if (!missing(`not`)) {
        stopifnot(
          is.character(`not`),
          length(`not`) == 1
        )
        self[["not"]] <- `not`
      }
      if (!missing(`field`)) {
        self[["field"]] <- `field`
      }
      if (!missing(`operator`)) {
        stopifnot(
          is.character(`operator`),
          length(`operator`) == 1
        )
        self[["operator"]] <- `operator`
      }
      if (!missing(`value`)) {
        self[["value"]] <- `value`
      }
      if (!missing(`and`)) {
        stopifnot(
          is.list(`and`),
          length(`and`) != 0
        )
        lapply(
          `and`,
          function(x) stopifnot(R6::is.R6(x))
        )
        self[["and"]] <- `and`
      }
      if (!missing(`or`)) {
        stopifnot(
          is.list(`or`),
          length(`or`) != 0
        )
        lapply(
          `or`,
          function(x) stopifnot(R6::is.R6(x))
        )
        self[["or"]] <- `or`
      }
      if (!missing(`constantScore`)) {
        self[["constantScore"]] <- `constantScore`
      }
      if (!missing(`boost`)) {
        stopifnot(
          is.numeric(`boost`),
          length(`boost`) == 1
        )
        self[["boost"]] <- `boost`
      }
    },
    toList = function() {
      QueryConditionList <- list()
      if (!is.null(self[["not"]])) {
        QueryConditionList[["not"]] <-
          self[["not"]]
      }
      if (!is.null(self[["field"]])) {
        QueryConditionList[["field"]] <-
          self[["field"]]
      }
      if (!is.null(self[["operator"]])) {
        QueryConditionList[["operator"]] <-
          self[["operator"]]
      }
      if (!is.null(self[["value"]])) {
        QueryConditionList[["value"]] <-
          self[["value"]]
      }
      if (!is.null(self[["and"]])) {
        QueryConditionList[["and"]] <-
          lapply(self[["and"]], function(x) x$toList())
      }
      if (!is.null(self[["or"]])) {
        QueryConditionList[["or"]] <-
          lapply(self[["or"]], function(x) x$toList())
      }
      if (!is.null(self[["constantScore"]])) {
        QueryConditionList[["constantScore"]] <-
          self[["constantScore"]]
      }
      if (!is.null(self[["boost"]])) {
        QueryConditionList[["boost"]] <-
          self[["boost"]]
      }
      ## omit empty nested lists in returned list
      QueryConditionList[vapply(
        QueryConditionList,
        length,
        FUN.VALUE = integer(1)
      ) > 0]
    },
    fromList = function(QueryConditionList,
                            typeMapping = NULL) {
      if (is.null(typeMapping[["not"]])) {
        self[["not"]] <-
          QueryConditionList[["not"]]
      } else {
        obj <- eval(parse(
          text = paste0(typeMapping[["not"]], "$new()")
        ))
        self[["not"]] <- obj$fromList(
          QueryConditionList[["not"]],
          typeMapping = typeMapping
        )
      }
      if (is.null(typeMapping[["field"]])) {
        self[["field"]] <-
          QueryConditionList[["field"]]
      } else {
        obj <- eval(parse(
          text = paste0(typeMapping[["field"]], "$new()")
        ))
        self[["field"]] <- obj$fromList(
          QueryConditionList[["field"]],
          typeMapping = typeMapping
        )
      }
      if (is.null(typeMapping[["operator"]])) {
        self[["operator"]] <-
          QueryConditionList[["operator"]]
      } else {
        obj <- eval(parse(
          text = paste0(typeMapping[["operator"]], "$new()")
        ))
        self[["operator"]] <- obj$fromList(
          QueryConditionList[["operator"]],
          typeMapping = typeMapping
        )
      }
      if (is.null(typeMapping[["value"]])) {
        self[["value"]] <-
          QueryConditionList[["value"]]
      } else {
        obj <- eval(parse(
          text = paste0(typeMapping[["value"]], "$new()")
        ))
        self[["value"]] <- obj$fromList(
          QueryConditionList[["value"]],
          typeMapping = typeMapping
        )
      }
      self[["and"]] <- lapply(
        QueryConditionList[["and"]],
        function(x) {
          QueryCondition$new()$fromList(x,
            typeMapping = typeMapping
          )
        }
      )
      self[["or"]] <- lapply(
        QueryConditionList[["or"]],
        function(x) {
          QueryCondition$new()$fromList(x,
            typeMapping = typeMapping
          )
        }
      )
      if (is.null(typeMapping[["constantScore"]])) {
        self[["constantScore"]] <-
          QueryConditionList[["constantScore"]]
      } else {
        obj <- eval(parse(
          text = paste0(typeMapping[["constantScore"]], "$new()")
        ))
        self[["constantScore"]] <- obj$fromList(
          QueryConditionList[["constantScore"]],
          typeMapping = typeMapping
        )
      }
      if (is.null(typeMapping[["boost"]])) {
        self[["boost"]] <-
          QueryConditionList[["boost"]]
      } else {
        obj <- eval(parse(
          text = paste0(typeMapping[["boost"]], "$new()")
        ))
        self[["boost"]] <- obj$fromList(
          QueryConditionList[["boost"]],
          typeMapping = typeMapping
        )
      }
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
    fromJSONString = function(QueryConditionJson,
                                  typeMapping = NULL) {
      QueryConditionList <- jsonlite::fromJSON(
        QueryConditionJson,
        simplifyVector = FALSE
      )
      if (is.null(typeMapping[["not"]])) {
        self[["not"]] <-
          QueryConditionList[["not"]]
      } else {
        obj <- eval(parse(
          text = paste0(typeMapping[["not"]], "$new()")
        ))
        self[["not"]] <- obj$fromJSONString(
          jsonlite::toJSON(
            QueryConditionList[["not"]],
            auto_unbox = TRUE
          ),
          typeMapping = typeMapping
        )
      }
      if (is.null(typeMapping[["field"]])) {
        self[["field"]] <-
          QueryConditionList[["field"]]
      } else {
        obj <- eval(parse(
          text = paste0(typeMapping[["field"]], "$new()")
        ))
        self[["field"]] <- obj$fromJSONString(
          jsonlite::toJSON(
            QueryConditionList[["field"]],
            auto_unbox = TRUE
          ),
          typeMapping = typeMapping
        )
      }
      if (is.null(typeMapping[["operator"]])) {
        self[["operator"]] <-
          QueryConditionList[["operator"]]
      } else {
        obj <- eval(parse(
          text = paste0(typeMapping[["operator"]], "$new()")
        ))
        self[["operator"]] <- obj$fromJSONString(
          jsonlite::toJSON(
            QueryConditionList[["operator"]],
            auto_unbox = TRUE
          ),
          typeMapping = typeMapping
        )
      }
      if (is.null(typeMapping[["value"]])) {
        self[["value"]] <-
          QueryConditionList[["value"]]
      } else {
        obj <- eval(parse(
          text = paste0(typeMapping[["value"]], "$new()")
        ))
        self[["value"]] <- obj$fromJSONString(
          jsonlite::toJSON(
            QueryConditionList[["value"]],
            auto_unbox = TRUE
          ),
          typeMapping = typeMapping
        )
      }
      self[["and"]] <- lapply(
        QueryConditionList[["and"]],
        function(x) {
          QueryCondition$new()$fromJSONString(
            jsonlite::toJSON(
              x,
              auto_unbox = TRUE
            ),
            typeMapping = typeMapping
          )
        }
      )
      self[["or"]] <- lapply(
        QueryConditionList[["or"]],
        function(x) {
          QueryCondition$new()$fromJSONString(
            jsonlite::toJSON(
              x,
              auto_unbox = TRUE
            ),
            typeMapping = typeMapping
          )
        }
      )
      if (is.null(typeMapping[["constantScore"]])) {
        self[["constantScore"]] <-
          QueryConditionList[["constantScore"]]
      } else {
        obj <- eval(parse(
          text = paste0(typeMapping[["constantScore"]], "$new()")
        ))
        self[["constantScore"]] <- obj$fromJSONString(
          jsonlite::toJSON(
            QueryConditionList[["constantScore"]],
            auto_unbox = TRUE
          ),
          typeMapping = typeMapping
        )
      }
      if (is.null(typeMapping[["boost"]])) {
        self[["boost"]] <-
          QueryConditionList[["boost"]]
      } else {
        obj <- eval(parse(
          text = paste0(typeMapping[["boost"]], "$new()")
        ))
        self[["boost"]] <- obj$fromJSONString(
          jsonlite::toJSON(
            QueryConditionList[["boost"]],
            auto_unbox = TRUE
          ),
          typeMapping = typeMapping
        )
      }
      invisible(self)
    }
  )
)
