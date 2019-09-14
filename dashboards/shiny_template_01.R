
# -------------------------------------------------------------------------
library(shiny)
library(shinydashboard)

# -------------------------------------------------------------------------

header <- dashboardHeader()
body <- dashboardBody()
sbar <- dashboardSidebar()

# User Interface
ui <- dashboardPage(header, sbar, body)

# Server function
server <- function(input, output){
  
}


# -------------------------------------------------------------------------

shinyApp(ui, server)

# -------------------------------------------------------------------------


