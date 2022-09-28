#' text_highlight UI Function
#'
#' @description A shiny Module.
#'
#' @param id,input,output,session Internal parameters for {shiny}.
#'
#' @noRd
#'
#' @importFrom shiny NS tagList
mod_text_highlight_ui <- function(id) {
  ns <- NS(id)
  tagList(
    HTML('<script type="module" src="www/mark.js" ></script>'),
    fluidRow(
      column(3, HTML('<button id="btn" style="width:120px;height:90px;font-size: x-large">
        Press me!<br>&#9835&#9835</button><br>')),

      column(
        9, HTML("<span>Type in a search term:</span>"),
        textInput(ns("keyword"), "Search term"),

        HTML('<div class="panel-body context">'),
        htmlOutput(ns("search_text")),
        HTML("</div>")
      )
    )
  )
}

#' text_highlight Server Functions
#'
#' @noRd
mod_text_highlight_server <- function(id) {
  moduleServer(id, function(input, output, session) {
    ns <- session$ns

    output$search_text <- renderText({
      search_results <- jane_eyre[stringr::str_detect(jane_eyre, "love")]

      paste("<p>", search_results, "</p>")
    })
  })
}
