#' Retrieve list of lab tests from Infermedica API
#'
#' @note The package expects \code{INFERMEDICA_APP_ID} and \code{INFERMEDICA_APP_KEY} to
#'     be in the environment. The easiest way to do this is to add entries to
#'     \code{~/.Renviron} and restart R.
#' @export
im_list_lab_tests <- function() {

  res <- GET("https://api.infermedica.com/v2/risk_factors",
             add_headers(app_id=Sys.getenv("INFERMEDICA_APP_ID"),
                         app_key=Sys.getenv("INFERMEDICA_APP_KEY")))

  stop_for_status(res)

  content(res, as="text", encoding="UTF-8") %>%
    fromJSON(flatten=TRUE)

}

#' Retrieve info for a specific lab test
#'
#' @note The package expects \code{INFERMEDICA_APP_ID} and \code{INFERMEDICA_APP_KEY} to
#'     be in the environment. The easiest way to do this is to add entries to
#'     \code{~/.Renviron} and restart R.
#' @param lab_test_id valid Infermedica risk factor id (use \code{im_list_lab_tests()} to
#'     get a list of valid ids)
#' @export
im_get_risk_factors <- function(lab_test_id) {

  res <- GET(sprintf("https://api.infermedica.com/v2/lab_tests/%s", lab_test_id),
             add_headers(app_id=Sys.getenv("INFERMEDICA_APP_ID"),
                         app_key=Sys.getenv("INFERMEDICA_APP_KEY")))

  stop_for_status(res)

  content(res, as="text", encoding="UTF-8") %>%
    fromJSON(flatten=TRUE)

}