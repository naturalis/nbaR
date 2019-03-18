#' Response Class
#'
#' Response Class
#' @export
Response <- R6::R6Class(
  "Response",
  public = list(
    content = NULL,
    response = NULL,
    initialize = function(content, response) {
      self$content <- content
      self$response <- response
    },
    print = function(...) {
      ## print class name
      cat("<Response>\n")
      cat("Fields:\n")
      cat("\tcontent: object of class", paste0("<", class(self$content)[1], ">"), "\n")
      cat("\tresponse: object of class", paste0("<", class(self$response)[1], "> (httr package)"), "\n")
      invisible(self)
    }
  )
)
