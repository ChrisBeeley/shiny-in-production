#' welcome UI Function
#'
#' @description A shiny Module.
#'
#' @param id,input,output,session Internal parameters for {shiny}.
#'
#' @noRd 
#'
#' @importFrom shiny NS tagList 
mod_welcome_ui <- function(id){
  ns <- NS(id)
  tagList(

    h2("Love always"),
    HTML('<div class="bg_heart">'),
    tags$img(src = "www/jane_eyre.jpeg", height = 600, align = "middle"),
    HTML("</div>")
  )
}
    
#' welcome Server Functions
#'
#' @noRd 
mod_welcome_server <- function(id){
  moduleServer( id, function(input, output, session){
    ns <- session$ns
 
  })
}
