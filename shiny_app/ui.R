#
# This is the user-interface definition of a Shiny web application. You can
# run the application by clicking 'Run App' above.
#
# Find out more about building applications with Shiny here:
# 
#    http://shiny.rstudio.com/
#

library(shiny)

# Define UI for application that draws a histogram
shinyUI(fluidPage(
  
  # Application title
  titlePanel("Iris dataset"),
  
  # Sidebar with a slider input for number of bins 
  sidebarLayout(
    sidebarPanel(
       numericInput('perc', 'Which percentage of the data to display?', value = 100, min = 0, max = 100, 
                    step = 1)
    ),
    
    # Show a plot of the generated distribution
    mainPanel(
      plotOutput('plotje'),
      tableOutput('dataset')
    )
  )
))
