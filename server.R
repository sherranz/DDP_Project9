library(shiny)
shinyServer(
  function(input, output) {
    output$plotD<-renderPlot({
      if(input$d==1){
        sample<-rnorm(input$n, 0, 1)
        theH<-hist(sample, breaks = 100, freq = FALSE, col="red", xlim = c(-5,5), ylim = c(0,.5))
        lines(theH$breaks, y=dnorm(theH$breaks,0,1), col="blue", lwd=3)
      }else if(input$d==2){
        sample<-rexp(input$n, 1)
        theH<-hist(sample, breaks = 100, freq = FALSE, col="red", xlim = c(0,5), ylim = c(0,1))
        lines(theH$breaks, y=dexp(theH$breaks,1), col="blue", lwd=3)
      }else if(input$d==3){
        sample<-stats::rt(input$n, 10)
        theH<-hist(sample, breaks = 100, freq = FALSE, col="red", xlim = c(-5,5), ylim = c(0,.5))
        lines(theH$breaks, y=dt(theH$breaks,10), col="blue", lwd=3)
      }else{}
    })
  }
)