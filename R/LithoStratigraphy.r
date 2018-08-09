# Netherlands Biodiversity API
#
# Access to the digitised Natural History collection at the Naturalis Biodiversity Center
#
# OpenAPI spec version: v2
# Contact: support@naturalis.nl
# Generated by: https://github.com/swagger-api/swagger-codegen.git


#' LithoStratigraphy Class
#'
#' @field qualifier
#' @field preferredFlag
#' @field member2
#' @field member
#' @field informalName2
#' @field informalName
#' @field importedName2
#' @field importedName1
#' @field lithoIdentifier
#' @field formation2
#' @field formationGroup2
#' @field formationGroup
#' @field formation
#' @field certainty2
#' @field certainty
#' @field bed2
#' @field bed
#'
#' @importFrom R6 R6Class
#' @importFrom jsonlite fromJSON toJSON
#' @export
LithoStratigraphy <- R6::R6Class(
  "LithoStratigraphy",
  public = list(
    `qualifier` = NULL,
    `preferredFlag` = NULL,
    `member2` = NULL,
    `member` = NULL,
    `informalName2` = NULL,
    `informalName` = NULL,
    `importedName2` = NULL,
    `importedName1` = NULL,
    `lithoIdentifier` = NULL,
    `formation2` = NULL,
    `formationGroup2` = NULL,
    `formationGroup` = NULL,
    `formation` = NULL,
    `certainty2` = NULL,
    `certainty` = NULL,
    `bed2` = NULL,
    `bed` = NULL,
    initialize = function(
                              `qualifier`,
                              `preferredFlag`,
                              `member2`,
                              `member`,
                              `informalName2`,
                              `informalName`,
                              `importedName2`,
                              `importedName1`,
                              `lithoIdentifier`,
                              `formation2`,
                              `formationGroup2`,
                              `formationGroup`,
                              `formation`,
                              `certainty2`,
                              `certainty`,
                              `bed2`,
                              `bed`) {
      if (!missing(`qualifier`)) {
        stopifnot(
          is.character(`qualifier`),
          length(`qualifier`) == 1
        )
        self[["qualifier"]] <- `qualifier`
      }
      if (!missing(`preferredFlag`)) {
        self[["preferredFlag"]] <- `preferredFlag`
      }
      if (!missing(`member2`)) {
        stopifnot(
          is.character(`member2`),
          length(`member2`) == 1
        )
        self[["member2"]] <- `member2`
      }
      if (!missing(`member`)) {
        stopifnot(
          is.character(`member`),
          length(`member`) == 1
        )
        self[["member"]] <- `member`
      }
      if (!missing(`informalName2`)) {
        stopifnot(
          is.character(`informalName2`),
          length(`informalName2`) == 1
        )
        self[["informalName2"]] <- `informalName2`
      }
      if (!missing(`informalName`)) {
        stopifnot(
          is.character(`informalName`),
          length(`informalName`) == 1
        )
        self[["informalName"]] <- `informalName`
      }
      if (!missing(`importedName2`)) {
        stopifnot(
          is.character(`importedName2`),
          length(`importedName2`) == 1
        )
        self[["importedName2"]] <- `importedName2`
      }
      if (!missing(`importedName1`)) {
        stopifnot(
          is.character(`importedName1`),
          length(`importedName1`) == 1
        )
        self[["importedName1"]] <- `importedName1`
      }
      if (!missing(`lithoIdentifier`)) {
        stopifnot(
          is.character(`lithoIdentifier`),
          length(`lithoIdentifier`) == 1
        )
        self[["lithoIdentifier"]] <- `lithoIdentifier`
      }
      if (!missing(`formation2`)) {
        stopifnot(
          is.character(`formation2`),
          length(`formation2`) == 1
        )
        self[["formation2"]] <- `formation2`
      }
      if (!missing(`formationGroup2`)) {
        stopifnot(
          is.character(`formationGroup2`),
          length(`formationGroup2`) == 1
        )
        self[["formationGroup2"]] <- `formationGroup2`
      }
      if (!missing(`formationGroup`)) {
        stopifnot(
          is.character(`formationGroup`),
          length(`formationGroup`) == 1
        )
        self[["formationGroup"]] <- `formationGroup`
      }
      if (!missing(`formation`)) {
        stopifnot(
          is.character(`formation`),
          length(`formation`) == 1
        )
        self[["formation"]] <- `formation`
      }
      if (!missing(`certainty2`)) {
        stopifnot(
          is.character(`certainty2`),
          length(`certainty2`) == 1
        )
        self[["certainty2"]] <- `certainty2`
      }
      if (!missing(`certainty`)) {
        stopifnot(
          is.character(`certainty`),
          length(`certainty`) == 1
        )
        self[["certainty"]] <- `certainty`
      }
      if (!missing(`bed2`)) {
        stopifnot(
          is.character(`bed2`),
          length(`bed2`) == 1
        )
        self[["bed2"]] <- `bed2`
      }
      if (!missing(`bed`)) {
        stopifnot(
          is.character(`bed`),
          length(`bed`) == 1
        )
        self[["bed"]] <- `bed`
      }
    },
    toList = function() {
      LithoStratigraphyList <- list()
      if (!is.null(self[["qualifier"]])) {
        LithoStratigraphyList[["qualifier"]] <-
          self[["qualifier"]]
      }
      if (!is.null(self[["preferredFlag"]])) {
        LithoStratigraphyList[["preferredFlag"]] <-
          self[["preferredFlag"]]
      }
      if (!is.null(self[["member2"]])) {
        LithoStratigraphyList[["member2"]] <-
          self[["member2"]]
      }
      if (!is.null(self[["member"]])) {
        LithoStratigraphyList[["member"]] <-
          self[["member"]]
      }
      if (!is.null(self[["informalName2"]])) {
        LithoStratigraphyList[["informalName2"]] <-
          self[["informalName2"]]
      }
      if (!is.null(self[["informalName"]])) {
        LithoStratigraphyList[["informalName"]] <-
          self[["informalName"]]
      }
      if (!is.null(self[["importedName2"]])) {
        LithoStratigraphyList[["importedName2"]] <-
          self[["importedName2"]]
      }
      if (!is.null(self[["importedName1"]])) {
        LithoStratigraphyList[["importedName1"]] <-
          self[["importedName1"]]
      }
      if (!is.null(self[["lithoIdentifier"]])) {
        LithoStratigraphyList[["lithoIdentifier"]] <-
          self[["lithoIdentifier"]]
      }
      if (!is.null(self[["formation2"]])) {
        LithoStratigraphyList[["formation2"]] <-
          self[["formation2"]]
      }
      if (!is.null(self[["formationGroup2"]])) {
        LithoStratigraphyList[["formationGroup2"]] <-
          self[["formationGroup2"]]
      }
      if (!is.null(self[["formationGroup"]])) {
        LithoStratigraphyList[["formationGroup"]] <-
          self[["formationGroup"]]
      }
      if (!is.null(self[["formation"]])) {
        LithoStratigraphyList[["formation"]] <-
          self[["formation"]]
      }
      if (!is.null(self[["certainty2"]])) {
        LithoStratigraphyList[["certainty2"]] <-
          self[["certainty2"]]
      }
      if (!is.null(self[["certainty"]])) {
        LithoStratigraphyList[["certainty"]] <-
          self[["certainty"]]
      }
      if (!is.null(self[["bed2"]])) {
        LithoStratigraphyList[["bed2"]] <-
          self[["bed2"]]
      }
      if (!is.null(self[["bed"]])) {
        LithoStratigraphyList[["bed"]] <-
          self[["bed"]]
      }
      ## omit empty nested lists in returned list
      LithoStratigraphyList[vapply(
        LithoStratigraphyList,
        length,
        FUN.VALUE = integer(1)
      ) > 0]
    },
    fromList = function(LithoStratigraphyList,
                            typeMapping = NULL) {
      if (is.null(typeMapping[["qualifier"]])) {
        self[["qualifier"]] <-
          LithoStratigraphyList[["qualifier"]]
      } else {
        obj <- eval(parse(
          text = paste0(typeMapping[["qualifier"]], "$new()")
        ))
        self[["qualifier"]] <- obj$fromList(
          LithoStratigraphyList[["qualifier"]],
          typeMapping = typeMapping
        )
      }
      if (is.null(typeMapping[["preferredFlag"]])) {
        self[["preferredFlag"]] <-
          LithoStratigraphyList[["preferredFlag"]]
      } else {
        obj <- eval(parse(
          text = paste0(typeMapping[["preferredFlag"]], "$new()")
        ))
        self[["preferredFlag"]] <- obj$fromList(
          LithoStratigraphyList[["preferredFlag"]],
          typeMapping = typeMapping
        )
      }
      if (is.null(typeMapping[["member2"]])) {
        self[["member2"]] <-
          LithoStratigraphyList[["member2"]]
      } else {
        obj <- eval(parse(
          text = paste0(typeMapping[["member2"]], "$new()")
        ))
        self[["member2"]] <- obj$fromList(
          LithoStratigraphyList[["member2"]],
          typeMapping = typeMapping
        )
      }
      if (is.null(typeMapping[["member"]])) {
        self[["member"]] <-
          LithoStratigraphyList[["member"]]
      } else {
        obj <- eval(parse(
          text = paste0(typeMapping[["member"]], "$new()")
        ))
        self[["member"]] <- obj$fromList(
          LithoStratigraphyList[["member"]],
          typeMapping = typeMapping
        )
      }
      if (is.null(typeMapping[["informalName2"]])) {
        self[["informalName2"]] <-
          LithoStratigraphyList[["informalName2"]]
      } else {
        obj <- eval(parse(
          text = paste0(typeMapping[["informalName2"]], "$new()")
        ))
        self[["informalName2"]] <- obj$fromList(
          LithoStratigraphyList[["informalName2"]],
          typeMapping = typeMapping
        )
      }
      if (is.null(typeMapping[["informalName"]])) {
        self[["informalName"]] <-
          LithoStratigraphyList[["informalName"]]
      } else {
        obj <- eval(parse(
          text = paste0(typeMapping[["informalName"]], "$new()")
        ))
        self[["informalName"]] <- obj$fromList(
          LithoStratigraphyList[["informalName"]],
          typeMapping = typeMapping
        )
      }
      if (is.null(typeMapping[["importedName2"]])) {
        self[["importedName2"]] <-
          LithoStratigraphyList[["importedName2"]]
      } else {
        obj <- eval(parse(
          text = paste0(typeMapping[["importedName2"]], "$new()")
        ))
        self[["importedName2"]] <- obj$fromList(
          LithoStratigraphyList[["importedName2"]],
          typeMapping = typeMapping
        )
      }
      if (is.null(typeMapping[["importedName1"]])) {
        self[["importedName1"]] <-
          LithoStratigraphyList[["importedName1"]]
      } else {
        obj <- eval(parse(
          text = paste0(typeMapping[["importedName1"]], "$new()")
        ))
        self[["importedName1"]] <- obj$fromList(
          LithoStratigraphyList[["importedName1"]],
          typeMapping = typeMapping
        )
      }
      if (is.null(typeMapping[["lithoIdentifier"]])) {
        self[["lithoIdentifier"]] <-
          LithoStratigraphyList[["lithoIdentifier"]]
      } else {
        obj <- eval(parse(
          text = paste0(typeMapping[["lithoIdentifier"]], "$new()")
        ))
        self[["lithoIdentifier"]] <- obj$fromList(
          LithoStratigraphyList[["lithoIdentifier"]],
          typeMapping = typeMapping
        )
      }
      if (is.null(typeMapping[["formation2"]])) {
        self[["formation2"]] <-
          LithoStratigraphyList[["formation2"]]
      } else {
        obj <- eval(parse(
          text = paste0(typeMapping[["formation2"]], "$new()")
        ))
        self[["formation2"]] <- obj$fromList(
          LithoStratigraphyList[["formation2"]],
          typeMapping = typeMapping
        )
      }
      if (is.null(typeMapping[["formationGroup2"]])) {
        self[["formationGroup2"]] <-
          LithoStratigraphyList[["formationGroup2"]]
      } else {
        obj <- eval(parse(
          text = paste0(typeMapping[["formationGroup2"]], "$new()")
        ))
        self[["formationGroup2"]] <- obj$fromList(
          LithoStratigraphyList[["formationGroup2"]],
          typeMapping = typeMapping
        )
      }
      if (is.null(typeMapping[["formationGroup"]])) {
        self[["formationGroup"]] <-
          LithoStratigraphyList[["formationGroup"]]
      } else {
        obj <- eval(parse(
          text = paste0(typeMapping[["formationGroup"]], "$new()")
        ))
        self[["formationGroup"]] <- obj$fromList(
          LithoStratigraphyList[["formationGroup"]],
          typeMapping = typeMapping
        )
      }
      if (is.null(typeMapping[["formation"]])) {
        self[["formation"]] <-
          LithoStratigraphyList[["formation"]]
      } else {
        obj <- eval(parse(
          text = paste0(typeMapping[["formation"]], "$new()")
        ))
        self[["formation"]] <- obj$fromList(
          LithoStratigraphyList[["formation"]],
          typeMapping = typeMapping
        )
      }
      if (is.null(typeMapping[["certainty2"]])) {
        self[["certainty2"]] <-
          LithoStratigraphyList[["certainty2"]]
      } else {
        obj <- eval(parse(
          text = paste0(typeMapping[["certainty2"]], "$new()")
        ))
        self[["certainty2"]] <- obj$fromList(
          LithoStratigraphyList[["certainty2"]],
          typeMapping = typeMapping
        )
      }
      if (is.null(typeMapping[["certainty"]])) {
        self[["certainty"]] <-
          LithoStratigraphyList[["certainty"]]
      } else {
        obj <- eval(parse(
          text = paste0(typeMapping[["certainty"]], "$new()")
        ))
        self[["certainty"]] <- obj$fromList(
          LithoStratigraphyList[["certainty"]],
          typeMapping = typeMapping
        )
      }
      if (is.null(typeMapping[["bed2"]])) {
        self[["bed2"]] <-
          LithoStratigraphyList[["bed2"]]
      } else {
        obj <- eval(parse(
          text = paste0(typeMapping[["bed2"]], "$new()")
        ))
        self[["bed2"]] <- obj$fromList(
          LithoStratigraphyList[["bed2"]],
          typeMapping = typeMapping
        )
      }
      if (is.null(typeMapping[["bed"]])) {
        self[["bed"]] <-
          LithoStratigraphyList[["bed"]]
      } else {
        obj <- eval(parse(
          text = paste0(typeMapping[["bed"]], "$new()")
        ))
        self[["bed"]] <- obj$fromList(
          LithoStratigraphyList[["bed"]],
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
    fromJSONString = function(LithoStratigraphyJson,
                                  typeMapping = NULL) {
      LithoStratigraphyList <- jsonlite::fromJSON(
        LithoStratigraphyJson,
        simplifyVector = FALSE
      )
      if (is.null(typeMapping[["qualifier"]])) {
        self[["qualifier"]] <-
          LithoStratigraphyList[["qualifier"]]
      } else {
        obj <- eval(parse(
          text = paste0(typeMapping[["qualifier"]], "$new()")
        ))
        self[["qualifier"]] <- obj$fromJSONString(
          jsonlite::toJSON(
            LithoStratigraphyList[["qualifier"]],
            auto_unbox = TRUE
          ),
          typeMapping = typeMapping
        )
      }
      if (is.null(typeMapping[["preferredFlag"]])) {
        self[["preferredFlag"]] <-
          LithoStratigraphyList[["preferredFlag"]]
      } else {
        obj <- eval(parse(
          text = paste0(typeMapping[["preferredFlag"]], "$new()")
        ))
        self[["preferredFlag"]] <- obj$fromJSONString(
          jsonlite::toJSON(
            LithoStratigraphyList[["preferredFlag"]],
            auto_unbox = TRUE
          ),
          typeMapping = typeMapping
        )
      }
      if (is.null(typeMapping[["member2"]])) {
        self[["member2"]] <-
          LithoStratigraphyList[["member2"]]
      } else {
        obj <- eval(parse(
          text = paste0(typeMapping[["member2"]], "$new()")
        ))
        self[["member2"]] <- obj$fromJSONString(
          jsonlite::toJSON(
            LithoStratigraphyList[["member2"]],
            auto_unbox = TRUE
          ),
          typeMapping = typeMapping
        )
      }
      if (is.null(typeMapping[["member"]])) {
        self[["member"]] <-
          LithoStratigraphyList[["member"]]
      } else {
        obj <- eval(parse(
          text = paste0(typeMapping[["member"]], "$new()")
        ))
        self[["member"]] <- obj$fromJSONString(
          jsonlite::toJSON(
            LithoStratigraphyList[["member"]],
            auto_unbox = TRUE
          ),
          typeMapping = typeMapping
        )
      }
      if (is.null(typeMapping[["informalName2"]])) {
        self[["informalName2"]] <-
          LithoStratigraphyList[["informalName2"]]
      } else {
        obj <- eval(parse(
          text = paste0(typeMapping[["informalName2"]], "$new()")
        ))
        self[["informalName2"]] <- obj$fromJSONString(
          jsonlite::toJSON(
            LithoStratigraphyList[["informalName2"]],
            auto_unbox = TRUE
          ),
          typeMapping = typeMapping
        )
      }
      if (is.null(typeMapping[["informalName"]])) {
        self[["informalName"]] <-
          LithoStratigraphyList[["informalName"]]
      } else {
        obj <- eval(parse(
          text = paste0(typeMapping[["informalName"]], "$new()")
        ))
        self[["informalName"]] <- obj$fromJSONString(
          jsonlite::toJSON(
            LithoStratigraphyList[["informalName"]],
            auto_unbox = TRUE
          ),
          typeMapping = typeMapping
        )
      }
      if (is.null(typeMapping[["importedName2"]])) {
        self[["importedName2"]] <-
          LithoStratigraphyList[["importedName2"]]
      } else {
        obj <- eval(parse(
          text = paste0(typeMapping[["importedName2"]], "$new()")
        ))
        self[["importedName2"]] <- obj$fromJSONString(
          jsonlite::toJSON(
            LithoStratigraphyList[["importedName2"]],
            auto_unbox = TRUE
          ),
          typeMapping = typeMapping
        )
      }
      if (is.null(typeMapping[["importedName1"]])) {
        self[["importedName1"]] <-
          LithoStratigraphyList[["importedName1"]]
      } else {
        obj <- eval(parse(
          text = paste0(typeMapping[["importedName1"]], "$new()")
        ))
        self[["importedName1"]] <- obj$fromJSONString(
          jsonlite::toJSON(
            LithoStratigraphyList[["importedName1"]],
            auto_unbox = TRUE
          ),
          typeMapping = typeMapping
        )
      }
      if (is.null(typeMapping[["lithoIdentifier"]])) {
        self[["lithoIdentifier"]] <-
          LithoStratigraphyList[["lithoIdentifier"]]
      } else {
        obj <- eval(parse(
          text = paste0(typeMapping[["lithoIdentifier"]], "$new()")
        ))
        self[["lithoIdentifier"]] <- obj$fromJSONString(
          jsonlite::toJSON(
            LithoStratigraphyList[["lithoIdentifier"]],
            auto_unbox = TRUE
          ),
          typeMapping = typeMapping
        )
      }
      if (is.null(typeMapping[["formation2"]])) {
        self[["formation2"]] <-
          LithoStratigraphyList[["formation2"]]
      } else {
        obj <- eval(parse(
          text = paste0(typeMapping[["formation2"]], "$new()")
        ))
        self[["formation2"]] <- obj$fromJSONString(
          jsonlite::toJSON(
            LithoStratigraphyList[["formation2"]],
            auto_unbox = TRUE
          ),
          typeMapping = typeMapping
        )
      }
      if (is.null(typeMapping[["formationGroup2"]])) {
        self[["formationGroup2"]] <-
          LithoStratigraphyList[["formationGroup2"]]
      } else {
        obj <- eval(parse(
          text = paste0(typeMapping[["formationGroup2"]], "$new()")
        ))
        self[["formationGroup2"]] <- obj$fromJSONString(
          jsonlite::toJSON(
            LithoStratigraphyList[["formationGroup2"]],
            auto_unbox = TRUE
          ),
          typeMapping = typeMapping
        )
      }
      if (is.null(typeMapping[["formationGroup"]])) {
        self[["formationGroup"]] <-
          LithoStratigraphyList[["formationGroup"]]
      } else {
        obj <- eval(parse(
          text = paste0(typeMapping[["formationGroup"]], "$new()")
        ))
        self[["formationGroup"]] <- obj$fromJSONString(
          jsonlite::toJSON(
            LithoStratigraphyList[["formationGroup"]],
            auto_unbox = TRUE
          ),
          typeMapping = typeMapping
        )
      }
      if (is.null(typeMapping[["formation"]])) {
        self[["formation"]] <-
          LithoStratigraphyList[["formation"]]
      } else {
        obj <- eval(parse(
          text = paste0(typeMapping[["formation"]], "$new()")
        ))
        self[["formation"]] <- obj$fromJSONString(
          jsonlite::toJSON(
            LithoStratigraphyList[["formation"]],
            auto_unbox = TRUE
          ),
          typeMapping = typeMapping
        )
      }
      if (is.null(typeMapping[["certainty2"]])) {
        self[["certainty2"]] <-
          LithoStratigraphyList[["certainty2"]]
      } else {
        obj <- eval(parse(
          text = paste0(typeMapping[["certainty2"]], "$new()")
        ))
        self[["certainty2"]] <- obj$fromJSONString(
          jsonlite::toJSON(
            LithoStratigraphyList[["certainty2"]],
            auto_unbox = TRUE
          ),
          typeMapping = typeMapping
        )
      }
      if (is.null(typeMapping[["certainty"]])) {
        self[["certainty"]] <-
          LithoStratigraphyList[["certainty"]]
      } else {
        obj <- eval(parse(
          text = paste0(typeMapping[["certainty"]], "$new()")
        ))
        self[["certainty"]] <- obj$fromJSONString(
          jsonlite::toJSON(
            LithoStratigraphyList[["certainty"]],
            auto_unbox = TRUE
          ),
          typeMapping = typeMapping
        )
      }
      if (is.null(typeMapping[["bed2"]])) {
        self[["bed2"]] <-
          LithoStratigraphyList[["bed2"]]
      } else {
        obj <- eval(parse(
          text = paste0(typeMapping[["bed2"]], "$new()")
        ))
        self[["bed2"]] <- obj$fromJSONString(
          jsonlite::toJSON(
            LithoStratigraphyList[["bed2"]],
            auto_unbox = TRUE
          ),
          typeMapping = typeMapping
        )
      }
      if (is.null(typeMapping[["bed"]])) {
        self[["bed"]] <-
          LithoStratigraphyList[["bed"]]
      } else {
        obj <- eval(parse(
          text = paste0(typeMapping[["bed"]], "$new()")
        ))
        self[["bed"]] <- obj$fromJSONString(
          jsonlite::toJSON(
            LithoStratigraphyList[["bed"]],
            auto_unbox = TRUE
          ),
          typeMapping = typeMapping
        )
      }
      invisible(self)
    }
  )
)
