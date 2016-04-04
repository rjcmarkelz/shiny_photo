library(shiny)
library(ggplot2)
library(plantecophys)

# TODO 
# [ ] params
# [ ] fix plot xy label size
# [ ] plot title

shinyServer(function(input, output){
    
    photo_out <- reactive({
        
        Aci(Ci = seq(10,1200,length=100),
            # VPD = input$VPD,
            PPFD = input$PPFD,
            Vcmax = input$Vcmax,
            Jmax = input$Jmax,
            Tleaf = input$Tleaf)
    })

    output$ACi_curve <- renderPlot({
        pl2 <- ggplot(data = photo_out(), aes(x = Ci, y = ALEAF))
        pl2 <- pl2 + geom_line(size = 2) + ylim(-3, 25)
        pl2
    })  

})

