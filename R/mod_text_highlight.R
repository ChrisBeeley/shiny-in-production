#' text_highlight UI Function
#'
#' @description A shiny Module.
#'
#' @param id,input,output,session Internal parameters for {shiny}.
#'
#' @noRd 
#'
#' @importFrom shiny NS tagList 
mod_text_highlight_ui <- function(id){
  ns <- NS(id)
  tagList(

    HTML('<script type="module" src="www/mark.js" ></script>'),

        HTML('<button id="btn">Press me!</button>'),

        HTML('<span>Type in a keyword:</span>'),

        textInput(ns("keyword"), "Search term"),

        #HTML('<input type="text" name="keyword" class="form-control input-sm" value="Jane">'),

        HTML('<div class="panel-body context">'),

        htmlOutput(ns("search_text")),
        HTML('</div>')
 
  )
}
    
#' text_highlight Server Functions
#'
#' @noRd 
mod_text_highlight_server <- function(id){
  moduleServer( id, function(input, output, session){
    ns <- session$ns

    output$search_text = renderText({

      search_results = jane_eyre[stringr::str_detect(jane_eyre, "love")]

      paste("<p>", search_results, "</p>")
    })
 
  })
}
