
# -------------------------------------------------------------------------

library(shiny)

ui <- fluidPage(
  # Input() functions

# -------------------------------------------------------------------------

        # Create an input with an *Input() function.
  sliderInput(inputId = "num",
              label = "Choose a number", 
              value = 25, min = 1, max = 100)
  # Output () functions
)

server <- function(input, output, session) {
  
}

shinyApp(ui, server)
