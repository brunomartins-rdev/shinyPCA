#' Welcome UI Module
#'
#' @param id A namespace ID for the module
#'
#' @return A UI component (card) with welcome text
#'
welcomeUI <- function(id) {
    ns <- shiny::NS(id)

    bslib::card(
        bslib::card_header(
            'Welcome to Shiny PCA'
        ),
        bslib::card_body(
            shiny::p('Shiny PCA is a Shiny web application where you can upload your dataset and receive a fully prepared, exportable Principal Component Analysis.'),
            shiny::p('Use the sidebar on the `Upload` to upload your file and begin exploring your data.'),
            shiny::p('Each page of the web app takes care of a part of the process, so start with our `Upload` section!')
        )
    )
}
