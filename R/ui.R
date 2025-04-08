#' UI Function for the Application
#'
#' @return UI for the Shiny application with navigation panels
#' @export
ui <- function() {

    bslib::page_navbar(
        title = 'Shiny PCA',

        bslib::nav_panel( # Welcome page
            'Welcome',
            welcomeUI('welcome')
        ),
        bslib::nav_panel(
            'Upload',
            uploadUI('upload')
        ),
        bslib::nav_panel(
            'Preprocess',
        ),
        bslib::nav_panel(
            'PCA',
        ),
        bslib::nav_panel(
            'Export and save',
        ),
    )
}
