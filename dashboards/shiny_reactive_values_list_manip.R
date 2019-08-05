
# -------------------------------------------------------------------------

library(shiny)

# -------------------------------------------------------------------------


ui <- fluidPage(
  actionButton(inputId = "nor", label = "Normal"), 
  actionButton(inputId = "uni", label = "Uniform"), 
  plotOutput("hist")
)

# -------------------------------------------------------------------------


server <- function(input, output, session) {
  rv <- reactiveValues(data = rnorm(100))
  observeEvent(input$nor, {rv$data <- rnorm(100)})
  observeEvent(input$uni, {rv$data <- runif(100)})
  
  output$hist <- renderPlot({
    hist(rv$data)
  })
}

# -------------------------------------------------------------------------


shinyApp(ui, server)
