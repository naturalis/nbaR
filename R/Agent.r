# Netherlands Biodiversity Api
#
# Access to the digitised Natural History collection at the Naturalis Biodiversity Center
#
# OpenAPI spec version: v2
# Contact: support@naturalis.nl
# Generated by: https://github.com/swagger-api/swagger-codegen.git


#' Agent Class
#'
#' @field agentText
#'
#' @importFrom R6 R6Class
#' @importFrom jsonlite fromJSON toJSON
#' @export
Agent <- R6::R6Class(
  "Agent",
  public = list(
    `agentText` = NULL,
    initialize = function(`agentText`) {
      if (!missing(`agentText`)) {
        stopifnot(is.character(`agentText`), length(`agentText`) == 1)
        self[["agentText"]] <- `agentText`
      }
    },

    toList = function() {
      AgentList <- list()
      if (!is.null(self[["agentText"]])) {
        AgentList[["agentText"]] <- self[["agentText"]]
      }
      ## omit empty nested lists in returned list
      AgentList[sapply(AgentList, length) > 0]
    },

    fromList = function(AgentList, typeMapping = NULL) {
      if (is.null(typeMapping[["agentText"]])) {
        self[["agentText"]] <- AgentList[["agentText"]]
      } else {
        obj <- eval(parse(text = paste0(typeMapping[["agentText"]], "$new()")))
        self[["agentText"]] <- obj$fromList(AgentList[["agentText"]], typeMapping = typeMapping)
      }
      invisible(self)
    },

    toJSONString = function(pretty = T) {
      jsonlite::toJSON(self$toList(), simplifyVector = T, auto_unbox = T, pretty = pretty)
    },

    fromJSONString = function(AgentJson, typeMapping = NULL) {
      AgentList <- jsonlite::fromJSON(AgentJson, simplifyVector = F)
      if (is.null(typeMapping[["agentText"]])) {
        self[["agentText"]] <- AgentList[["agentText"]]
      } else {
        obj <- eval(parse(text = paste0(typeMapping[["agentText"]], "$new()")))
        self[["agentText"]] <- obj$fromJSONString(jsonlite::toJSON(AgentList[["agentText"]], auto_unbox = TRUE), typeMapping = typeMapping)
      }
      invisible(self)
    }
  )
)
