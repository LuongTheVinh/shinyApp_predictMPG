library(shiny)

shinyServer(function(input, output) {
      
      model <- lm(mpg ~ wt, mtcars)
      
      output$distPlot <- renderPlot({
            
            weight <- input$weight/1000
            dataFrame <- as.data.frame(weight)
            names(dataFrame) <- 'wt'
            predMPG <- predict(model, dataFrame)
            
            plot(mpg ~ wt, mtcars, col = 'blue')
            title(paste('Car Weight (lbs \'000) = ',
                  formatC(weight, format = 'g'),
                  ' ---> Predicted MPG = ',
                  formatC(predMPG, format = 'g'), sep =''))
            abline(model, col = 'red', lwd = 3)
            abline(v = weight)
            abline(h = predMPG)
            
      })
      
})