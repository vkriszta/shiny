library(shiny)


shinyServer(
    function(input,output) {
        output$n1<-renderText({as.numeric(input$n1)})
        output$n2<-renderText({as.numeric(input$n2)})
        output$n3<-renderText({as.numeric(input$n1)}+{as.numeric(input$n2)})
        y<-reactive(mean(c({as.numeric(input$n1)},{as.numeric(input$n2)})))
        output$n4<-renderText({y()})
        
        }
    )