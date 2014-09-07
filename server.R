library(shiny)
library(UsingR)
data(galton)

diabetesRisk <- function(glucose) {glucose/200}
x <<- 0
x <<- x+1
y <<- 0

shinyServer(
  function(input,output) {
    y <<- y+1
    output$text1 <- renderText({input$text1})
    output$text2 <- renderText({input$text2})
    output$text3 <- renderText({
      input$goButton
      isolate(paste(input$text1, input$text2))                                
    })
    output$text4 <- renderText(y)
    output$text5 <- renderText(x)
    
    
    output$oid1 <- renderPrint({input$id1})
    output$oid2 <- renderPrint({input$id2})
    output$odate <- renderPrint({input$date})
    output$inputValue <- renderPrint({input$glucose})
    output$prediction <- renderPrint({diabetesRisk(input$glucose)})
    output$newHist <- renderPlot({
      hist(galton$child, xlab='child height', col='lightblue', main='Histogram')
      mu <- input$mu
      lines(c(mu,mu), c(0,200), col="red", lwd=5)
      mse <- mean((galton$child - mu)^2)
      text(63, 150, paste("mu = ", mu))
      text(63, 140, paste("MSE = ", round(mse, 2)))    
    })
  }
)