
# -------------------------------------------------------------------------

                  # Two inputs # 

# -------------------------------------------------------------------------

library(shiny)

# -------------------------------------------------------------------------


ui <- fluidPage(
sliderInput(inputId = "num", 
            label = "Choose a number", 
            value = 25, min = 0, max = 100), 
textInput(inputId = "title", 
          label = "Write a title", 
          value = "Histogram of Random Normal Values"), 
plotOutput("hist")
)

# -------------------------------------------------------------------------
# server function takes 3 args (input, output, session) 
# output$hist is from plotOutput("hist")
# input$num is from sliderInput inputID="num"
# input$title is from textInput inputID = "title"

server <- function(input, output, session) {
  output$hist <- renderPlot({
    hist(rnorm(input$num), main = input$title)
  })
}

# -------------------------------------------------------------------------


shinyApp(ui, server)

# -------------------------------------------------------------------------


