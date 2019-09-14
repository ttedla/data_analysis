
# -------------------------------------------------------------------------

# Always start with a blank template 

# -------------------------------------------------------------------------

library(shiny)
library(shinydashboard)

# -------------------------------------------------------------------------
# Let's add a header title 
header <- dashboardHeader(title = "Basic dashboard")

# -------------------------------------------------------------------------
# Let's add sidebar menu ( in the body add tabItems with corr tabName)

sbar <- dashboardSidebar(sidebarMenu(
  menuItem("Dashboard", tabName = "dashboard", icon = icon("dashboard")), 
  menuItem("Widgets", tabName = "widgets", icon = icon("th"))
))

# -------------------------------------------------------------------------

# add fluidRow
body <- dashboardBody(
  tabItems(
    # first tabItem content
  tabItem(tabName = "dashboard", 
    
  fluidRow(
    box(plotOutput("plot1", height = 250)), 
    box(
      title = "Controls", 
      sliderInput("slider", "Number of observations:", 1, 100, 50)
    )
  )
), 
# second tabItem
tabItem(tabName = "widgets", 
        h2("Widgets tab content")
    )
  )
)

# -------------------------------------------------------------------------

ui <- dashboardPage(header, sbar, body)

# -------------------------------------------------------------------------

server <- function(input, output) {
  set.seed(122)
  histdata <-rnorm(500)
  
  output$plot1 <- renderPlot({
    data <- histdata[seq_len(input$slider)]
    hist(data)
  })
}

# -------------------------------------------------------------------------

# shiny app
shinyApp(ui, server)
