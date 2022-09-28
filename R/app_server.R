#' The application server-side
#' 
#' @param input,output,session Internal parameters for {shiny}. 
#'     DO NOT REMOVE.
#' @import shiny
#' @noRd
app_server <- function( input, output, session ) {
  # Your application server logic 

  # modules

  mod_welcome_server("welcome_1")

  mod_text_highlight_server("text_highlight_1")

  # source python functions

  reticulate::source_python('python_code.py')
  
}
