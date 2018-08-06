#' Change in NiNos function (increase/decrease)
#'
#' This function allows you to calculate NiNos percentage change and also print whether they increased 
#'     or decreased. It will create a percentage column and an inccreasing/deccreasing column.
#'    It manipulates the registrations in thousands, so that column is required (reg_th) for the function to
#'    work.
#' @param table_to_use Table of data used. Will be mutated with 2 extra columns.
#' @keywords NiNos
#' @export
#' @examples
#' change_function()

change_function <-function (table_to_use) {
  complete_table <- table_to_use %>%
    mutate(Percent = (abs(table_to_use$reg_th / lag(table_to_use$reg_th, 1)-1)*100))%>%
    mutate(change = case_when(table_to_use$reg_th > lag(table_to_use$reg_th,1)-1 ~ "increase",
                              TRUE ~ "decrease"
    ))
  return(complete_table)
}