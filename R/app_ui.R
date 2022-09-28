#' The application User-Interface
#'
#' @param request Internal parameter for `{shiny}`.
#'     DO NOT REMOVE.
#' @import shiny
#' @import shinydashboard
#' @noRd
app_ui <- function(request) {
  tagList(
    # Leave this function for adding external resources
    golem_add_external_resources(),
    # Your application UI logic
    dashboardPage(
      dashboardHeader(title = "Jane Eyre"),
      dashboardSidebar(
        sidebarMenu(
          menuItem("Welcome", tabName = "dashboard", icon = icon("dashboard")),
          menuItem("Explore book", tabName = "widgets", icon = icon("th"))
        )
      ),
      dashboardBody(
        tabItems(
          # First tab content
          tabItem(
            tabName = "dashboard",
            mod_welcome_ui("welcome_1")
          ),

          # Second tab content
          tabItem(tabName = "widgets",
            mod_text_highlight_ui("text_highlight_1")
          )
        )
      )
    )
  )
}

#' Add external Resources to the Application
#'
#' This function is internally used to add external
#' resources inside the Shiny application.
#'
#' @import shiny
#' @importFrom golem add_resource_path activate_js favicon bundle_resources
#' @noRd
golem_add_external_resources <- function() {
  add_resource_path(
    "www", app_sys("app/www")
  )

  tags$head(
    favicon(),
    bundle_resources(
      path = app_sys("app/www"),
      app_title = "shiny-in-production"
    )
    # Add here other external resources
    # for example, you can add shinyalert::useShinyalert()
  )
}
