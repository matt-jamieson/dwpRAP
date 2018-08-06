#' Change in ninos function (up/down)
#'
#' This function allows you to calculate NiNos percentage change and also print whether
#'     they went up or down. It will create a column for the percentage change and an up/down column.
#' @param table_to_use Table of data used. Will be mutated with 2 extra columns.
#' @keywords NiNos
#' @export
#' @examples
#' change_function_up_down()

change_function_up_down <-function (table_to_use) {
  complete_table <- table_to_use %>%
    mutate(Percent = (abs(table_to_use$reg_th / lag(table_to_use$reg_th, 1)-1)*100))%>%
    mutate(change = case_when(table_to_use$reg_th > lag(table_to_use$reg_th,1)-1 ~ "up",
                              TRUE ~ "down"
    ))
  return(complete_table)
}

