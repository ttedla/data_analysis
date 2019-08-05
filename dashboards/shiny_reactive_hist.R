
# -------------------------------------------------------------------------

            # reactive 

# -------------------------------------------------------------------------

            # You call a reactive expression like a function

# -------------------------------------------------------------------------

library(shiny)

# -------------------------------------------------------------------------


ui <- fluidPage(
sliderInput(inputId = "num", 
            label = "Choose a number", 
            value = 25, min = 1, max = 100), 
plotOutput("hist"), 
verbatimTextOutput("stats")
)

# -------------------------------------------------------------------------


server <- function(input, output) {
  data <- reactive({
    rnorm(input$num)
  })
  output$hist <- renderPlot({
    hist(data())
  })
  output$stats <- renderPrint({
    summary(data())
  })
}

# -------------------------------------------------------------------------


shinyApp(ui, server)
