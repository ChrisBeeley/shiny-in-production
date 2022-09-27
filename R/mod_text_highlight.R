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

        HTML('<span>Type in a keyword:</span>
        <input type="text" name="keyword" class="form-control input-sm" placeholder="Lorem ipsum...">'),

        HTML('<div class="panel panel-default">
      <div class="panel-body context">
      <p>
      Lorem ipsum dolor sit āmet, consetetur sadipscing elitr, sed diam nonumy eirmod tempor invidunt ut labore et dolore magna aliquyam erat, sed diam voluptua. At vero eos et accusam et justo duo dolores et ea rebum. Stet clita kasd gubergren, nò sea takimata
      sanctus est Lorem ipsum dolor sit amet. Lorem ipsum dolor sit amet, consetetur sadipscing elitr, sed diam nonumy eirmod tempor invidunt ut labore et dolore magna aliquyam erat, sed diam voluptua. At vero eos et accusam et justo duo dolores et ea
      rebum. Stet clita kasd gubergren, no sea takimata sanctus est Lorem ipsum dolor sit amet. Lorem ipsum dolor sit amet, consetetur sadipscing elitr, sed diam nonumy eirmod tempor invidunt ut labore et dolore magna aliquyam erat, sed diam voluptua.
      At vero eos et accusam et justo duo dolores et ea rebum. Stet clita kasd gubergren, no sea takimata sanctus est Lorem ipsum dolor sit amet. Duis autem vel eum iriure dolor in hendrerit in vulputate velit esse molestie çonsequat, vel illum dolore
      eu feugiat nulla facilisis at vero eros et accumsan et iusto odio dignissim qui blandit prāesent luptatum zzril delenit augue duis dolore te feugait nulla facilisi. Lorem ipsum dolor sit amet,
    </p>
  </div>
</div>')
 
  )
}
    
#' text_highlight Server Functions
#'
#' @noRd 
mod_text_highlight_server <- function(id){
  moduleServer( id, function(input, output, session){
    ns <- session$ns
 
  })
}
