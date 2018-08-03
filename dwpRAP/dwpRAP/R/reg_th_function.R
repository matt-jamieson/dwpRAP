#' Registrations in thousands function
#'
#' This function allows you to count up nino's by year and divide by a thousand to obtain the measure of
#' "Registrations in thousands"
#' @param data_to_use Data to be used
#' @param variable_to_count Variable to be counted
#' @keywords NiNos
#' @export
#' @examples
#' reg_th_function()

reg_th_function <-function (data_to_use, variable_to_count) {
  complete_table <- data_to_use %>%
    dplyr::count(Publication_cycle) %>%
    mutate(reg_th =n / 1000)
  return(complete_table)
}

