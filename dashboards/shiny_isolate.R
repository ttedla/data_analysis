
# -------------------------------------------------------------------------

library(shiny)

# -------------------------------------------------------------------------
            # isolate() makes an non-reactive object #

# -------------------------------------------------------------------------



ui <- fluidPage(
sliderInput(inputId = "num", 
            label = "Choose a number", 
            value = 25, min = 2, max = 100), 
textInput(inputId = "title", 
          label = "Write a title", 
          value = "Histogram of a random Normal values"), 
plotOutput("hist")

)

# -------------------------------------------------------------------------


server <- function(input, output, session) {
  output$hist <- renderPlot({
    hist(rnorm(input$num), 
         main = isolate({
           input$title
         }))
  })
}

shinyApp(ui, server)

# -------------------------------------------------------------------------


