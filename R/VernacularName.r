# Netherlands Biodiversity API
#
# Access to the digitised Natural History collection at the Naturalis Biodiversity Center
#
# OpenAPI spec version: v2
# Contact: support@naturalis.nl
# Generated by: https://github.com/swagger-api/swagger-codegen.git


#' VernacularName Class
#'
#' @field name
#' @field language
#' @field preferred
#' @field references
#' @field experts
#'
#' @importFrom R6 R6Class
#' @importFrom jsonlite fromJSON toJSON
#' @export
VernacularName <- R6::R6Class(
  "VernacularName",
  public = list(
    `name` = NULL,
    `language` = NULL,
    `preferred` = NULL,
    `references` = NULL,
    `experts` = NULL,
    initialize = function(
                              `name`,
                              `language`,
                              `preferred`,
                              `references`,
                              `experts`) {
      if (!missing(`name`)) {
        stopifnot(
          is.character(`name`),
          length(`name`) == 1
        )
        self[["name"]] <- `name`
      }
      if (!missing(`language`)) {
        stopifnot(
          is.character(`language`),
          length(`language`) == 1
        )
        self[["language"]] <- `language`
      }
      if (!missing(`preferred`)) {
        self[["preferred"]] <- `preferred`
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
        self[["references"]] <- `references`
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
        self[["experts"]] <- `experts`
      }
    },
    toList = function() {
      VernacularNameList <- list()
      if (!is.null(self[["name"]])) {
        VernacularNameList[["name"]] <-
          self[["name"]]
      }
      if (!is.null(self[["language"]])) {
        VernacularNameList[["language"]] <-
          self[["language"]]
      }
      if (!is.null(self[["preferred"]])) {
        VernacularNameList[["preferred"]] <-
          self[["preferred"]]
      }
      if (!is.null(self[["references"]])) {
        VernacularNameList[["references"]] <-
          lapply(self[["references"]], function(x) x$toList())
      }
      if (!is.null(self[["experts"]])) {
        VernacularNameList[["experts"]] <-
          lapply(self[["experts"]], function(x) x$toList())
      }
      ## omit empty nested lists in returned list
      VernacularNameList[vapply(
        VernacularNameList,
        length,
        FUN.VALUE = integer(1)
      ) > 0]
    },
    fromList = function(VernacularNameList,
                            typeMapping = NULL) {
      if (is.null(typeMapping[["name"]])) {
        self[["name"]] <-
          VernacularNameList[["name"]]
      } else {
        obj <- eval(parse(
          text = paste0(typeMapping[["name"]], "$new()")
        ))
        self[["name"]] <- obj$fromList(
          VernacularNameList[["name"]],
          typeMapping = typeMapping
        )
      }
      if (is.null(typeMapping[["language"]])) {
        self[["language"]] <-
          VernacularNameList[["language"]]
      } else {
        obj <- eval(parse(
          text = paste0(typeMapping[["language"]], "$new()")
        ))
        self[["language"]] <- obj$fromList(
          VernacularNameList[["language"]],
          typeMapping = typeMapping
        )
      }
      if (is.null(typeMapping[["preferred"]])) {
        self[["preferred"]] <-
          VernacularNameList[["preferred"]]
      } else {
        obj <- eval(parse(
          text = paste0(typeMapping[["preferred"]], "$new()")
        ))
        self[["preferred"]] <- obj$fromList(
          VernacularNameList[["preferred"]],
          typeMapping = typeMapping
        )
      }
      self[["references"]] <- lapply(
        VernacularNameList[["references"]],
        function(x) {
          Reference$new()$fromList(x,
            typeMapping = typeMapping
          )
        }
      )
      self[["experts"]] <- lapply(
        VernacularNameList[["experts"]],
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
    fromJSONString = function(VernacularNameJson,
                                  typeMapping = NULL) {
      VernacularNameList <- jsonlite::fromJSON(
        VernacularNameJson,
        simplifyVector = FALSE
      )
      if (is.null(typeMapping[["name"]])) {
        self[["name"]] <-
          VernacularNameList[["name"]]
      } else {
        obj <- eval(parse(
          text = paste0(typeMapping[["name"]], "$new()")
        ))
        self[["name"]] <- obj$fromJSONString(
          jsonlite::toJSON(
            VernacularNameList[["name"]],
            auto_unbox = TRUE
          ),
          typeMapping = typeMapping
        )
      }
      if (is.null(typeMapping[["language"]])) {
        self[["language"]] <-
          VernacularNameList[["language"]]
      } else {
        obj <- eval(parse(
          text = paste0(typeMapping[["language"]], "$new()")
        ))
        self[["language"]] <- obj$fromJSONString(
          jsonlite::toJSON(
            VernacularNameList[["language"]],
            auto_unbox = TRUE
          ),
          typeMapping = typeMapping
        )
      }
      if (is.null(typeMapping[["preferred"]])) {
        self[["preferred"]] <-
          VernacularNameList[["preferred"]]
      } else {
        obj <- eval(parse(
          text = paste0(typeMapping[["preferred"]], "$new()")
        ))
        self[["preferred"]] <- obj$fromJSONString(
          jsonlite::toJSON(
            VernacularNameList[["preferred"]],
            auto_unbox = TRUE
          ),
          typeMapping = typeMapping
        )
      }
      self[["references"]] <- lapply(
        VernacularNameList[["references"]],
        function(x) {
          Reference$new()$fromJSONString(
            jsonlite::toJSON(
              x,
              auto_unbox = TRUE
            ),
            typeMapping = typeMapping
          )
        }
      )
      self[["experts"]] <- lapply(
        VernacularNameList[["experts"]],
        function(x) {
          Expert$new()$fromJSONString(
            jsonlite::toJSON(
              x,
              auto_unbox = TRUE
            ),
            typeMapping = typeMapping
          )
        }
      )
      invisible(self)
    }
  )
)
