#' Upload UI Module UI
#'
#' @param id A namespace ID for the module UI
#'
#' @return UI for the upload module
#' @export
uploadUI <- function(id) {
    ns <- shiny::NS(id)
    bslib::layout_sidebar(
        sidebar = bslib::sidebar(
            sidebarTags(id)
        ),
        uploadMainContent(id)
    )
}

#' Sidebar UI Elements for File Upload
#'
#' @param id A namespace ID for the sidebar elements
#'
#' @return A list of UI elements for file upload and settings
#' @export
sidebarTags <- function(id) {
    ns <- shiny::NS(id)
    shiny::tagList(
        shiny::fileInput(ns('file_input'), 'Upload your .csv file', accept = c('.csv')),
        shiny::radioButtons(
            ns('delimiter'),
            'Select the delimiter character of your .csv file',
            choices = list(',' = ',', ';' = ';', '\t' = '\t'),
            selected = ','
        ),
        shiny::checkboxGroupInput(
            ns('cols_to_remove'),
            'Select the columns to remove from the analysis',
            choices = NULL
        )
    )
}


#' Main UI Plot for Upload page
#'
#' @param id A namespace ID for the main elements
#'
#' @return A list of UI elements for file upload and settings
#' @export
uploadMainContent <- function(id) {
    ns <- shiny::NS(id)
    shiny::tableOutput(ns('data_head'))
}

#' Upload Server Module
#'
#' @param id A namespace ID for the module server logic
#'
#' @return A reactive dataset for use in the server logic
#' @export
uploadServer <- function(id) {
    shiny::moduleServer(id, function(input, output, session) {
        dataset <- shiny::reactive({
            shiny::req(input$file_input)
            vroom::vroom(input$file_input$datapath, delim = input$delimiter)
        })

        shiny::observe({
            shiny::req(dataset())
            shiny::updateCheckboxGroupInput(
                session,
                'cols_to_remove',
                choices = names(dataset())
            )
        })

        output$data_head <- shiny::renderTable({
            shiny::req(dataset())
            utils::head(dataset())
        })

        return(dataset)
    })
}
