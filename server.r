library(shiny)
data("ChickWeight")
shinyServer(
  function(input, output) {
    output$plot1 <- renderPlot({
      ## Render a line chart
      plot(ChickWeight[,input$idx], main = c(input$idx," of the chick on a certain diet"), type = "s", xlab = "Weight", ylab = "# of Chicks")
      meanVal <- mean(ChickWeight[,input$idx])
      abline(h=meanVal, col = "red")
      output$meanVal <- renderPrint(meanVal)
    })
  }
)
