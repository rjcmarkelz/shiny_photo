library(shiny)
library(ggplot2)
library(plantecophys)

shinyServer(function(input, output){
    
    photo_out <- reactive({
        
        Aci(Ci = seq(0, 1500, length=100),
            # VPD = input$VPD,
            PPFD = input$PPFD,
            Vcmax = input$Vcmax,
            Jmax = input$Jmax,
            Tleaf = input$Tleaf, 
            RH = input$RH,
            alpha = input$alpha, 
            # theta = input$theta,
            Q10 = input$Q10)
    })

    output$ACi_curve <- renderPlot({
        pl2 <- ggplot(data = photo_out(), aes(x = Ci, y = ALEAF))
        pl2 <- pl2 + geom_line(size = 3) + ylim(-3, 35)
        pl2 <- pl2 + xlab("Ci") + ylab("A") 
        pl2

    })  

})


