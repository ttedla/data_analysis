
# -------------------------------------------------------------------------
# Tell the server how to assemble inputs into outputs
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
            # Use 3 rules to write the server function

server <- function(input, output, session) {
        # 1 - Save objects to display to output$
          # code (hist is from plotOutput("hist")
        # 2 - Build objects to display with render*()
          # Builds reactive output to display in UI
        # 3 - Access input values with input$
            # input$num
            # The input value changes whenever a user
                #changes the input.
  output$hist <- renderPlot({
        # code block that builds the object
    title <- "100 random normal values"
    #Reactivity automatically occurs whenever you use an
    #input value to render an output object
    #hist(rnorm(100), main = title)
    hist(rnorm(input$num), main = title)
  })
        
}

# -------------------------------------------------------------------------


shinyApp(ui, server)
