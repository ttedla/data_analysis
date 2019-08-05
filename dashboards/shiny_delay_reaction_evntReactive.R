
# -------------------------------------------------------------------------

library(shiny)

# -------------------------------------------------------------------------
                  # delay reaction till a button is hit 

ui <- fluidPage(
sliderInput(inputId = "num", 
            label = "Choose a number", 
            value = 25, min = 2, max = 100), 

actionButton(inputId = "go", 
             label = "Update"),
plotOutput("hist")
)

# -------------------------------------------------------------------------


server <- function(input, output, session) {
  data <- eventReactive(input$go, {
    rnorm(input$num)
  })
  
  output$hist <- renderPlot({
    #hist(rnorm(input$num))
    hist(data())
  })
}

shinyApp(ui, server)
