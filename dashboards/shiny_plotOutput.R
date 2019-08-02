
# -------------------------------------------------------------------------

            
            # To display output, add it to fluidPage() with an
            # *Output() function
# -------------------------------------------------------------------------

library(shiny)

ui <- fluidPage(
      # Input function 
  sliderInput(inputId = "num", 
              label = "Choose a number", 
              value = 25, min = 1, max = 100),
  plotOutput("hist") # the type of output to display is plotOutput 
                     # name to give to the output is hist
  
)

# -------------------------------------------------------------------------


server <- function(input, output, session) {
  
}

# -------------------------------------------------------------------------


shinyApp(ui, server)
