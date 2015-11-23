library(shiny)
data("ChickWeight")
# Define the overall UI
shinyUI(
  
  # Use a fluid Bootstrap layout
  fluidPage(
    
    # Give the page a title
    titlePanel("Weight or Age of chicks fed on a certain diet"),
    
    # Generate a row with a sidebar
    sidebarLayout(
      
      # Define the sidebar with one input
      sidebarPanel(
        selectInput("idx", "Name of Index:",
                    choices=c("weight"="weight","Time"="Time")),
        hr(),
        helpText("Select the index above to see the plot on right hand side.")),
      
      # Create a spot for the barplot
      mainPanel(
        plotOutput("plot1"),
        h4("Mean"),
        verbatimTextOutput("meanVal")
      ))))