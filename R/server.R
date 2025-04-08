#' Main server function
#'
#' @param input Shiny input object
#' @param output Shiny output object
#' @param session Shiny session object
#'
#' @return Server logic for the application
#' @export
server <- function(input, output, session) {

    dataset <- uploadServer('upload')

}
