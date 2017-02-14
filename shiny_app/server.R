#
# This is the server logic of a Shiny web application. You can run the 
# application by clicking 'Run App' above.
#
# Find out more about building applications with Shiny here:
# 
#    http://shiny.rstudio.com/
#

library(shiny)
library(ggplot2)

# Define server logic required to draw a histogram
shinyServer(function(input, output) {
  data(iris)
  datanew <- reactive({iris[1:(input$perc*nrow(iris)/100),]})
  output$dataset <- renderTable(datanew())
  output$plotje <- renderPlot({
    ggplot(datanew()) + geom_point(aes(Sepal.Length, Sepal.Width))
  })
})

