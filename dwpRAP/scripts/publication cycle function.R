#' Publication Year Filter Function
#'
#' This function allows you to find where the publication cycle is mentioned in code in order to replace it.
#'     UPDATE: change the publication_cycle value
#' @param data_to_use Data to check
#' @param Publication_cycle Date of publication cycle, will default to "YE SEP 17" as of 3/8/18.
#' @keywords publication cycle
#' @export
#' @examples
#' Publication_year_filter()

Publication_year_filter <- function (data_to_use, Publication_cycle) {
    filter(data_to_use, Publication_cycle == "YE Sep 17")
}
