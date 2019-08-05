
# -------------------------------------------------------------------------

              # Modularize code with reactive() #

# -------------------------------------------------------------------------

    # Two outputs 

# -------------------------------------------------------------------------

library(shiny)

ui <- fluidPage(
sliderInput(inputId = "num", 
            label = "Choose a number", 
            value = 25, min = 0, max = 100), 
plotOutput("hist"), 
verbatimTextOutput("stats")
)

# -------------------------------------------------------------------------


server <- function(input, output) {
  output$hist <- renderPlot({
    hist(rnorm(input$num))
  })
  output$stats <- renderPrint({
    summary(rnorm(input$num))
  })
}

# -------------------------------------------------------------------------


shinyApp(ui, server)


# -------------------------------------------------------------------------


