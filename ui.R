library(shiny)

shinyUI(fluidPage(

      titlePanel('Predict Car\'s Miles per Gallon (MPG) from Weight'),
      
      sidebarPanel('This is an app to predict a car\'s MPG from its weight,
            according to a simple linear regression model of MPG on Weight
            from the MTCARS dataset. Simply specify your car\'s weight using
            the input slider, and see the interactive graph show the predicted
            MPG.'),
      
      sidebarLayout(
            sidebarPanel(
                  sliderInput("weight", "Car Weight (lbs):",
                        min = 1300, max = 5000, value = 3000)
            ),
            
            mainPanel(
                  plotOutput("distPlot")
            )
      )
      
      
))