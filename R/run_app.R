#' Run app
#'
#' Launches the Shiny web application using the predefined UI and server functions.
#'
#' @return No return value. This function starts a Shiny application.
#' @export
run_app <- function() {
    shiny::shinyApp(ui = ui(), server = server)
}
