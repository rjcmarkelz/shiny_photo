library(shiny)
library(ggplot2)
library(plantecophys)

# r <- Aci(seq(60,2000,length=101), Ca=400)

shinyServer(function(input, output){
    
    photo_out <- reactive({
        Aci(Ci = seq(10,2000,length=101), PPFD = input$PPFD) 
    })

    output$ACi_curve <- renderPlot({
        pl2 <- ggplot(data = photo_out(), aes(x = Ci, y = ALEAF))
        pl2 + geom_line()
    })  

})

