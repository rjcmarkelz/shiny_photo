library(shiny)
library(ggplot2)
library(plantecophys)

r <- Aci(seq(60,2000,length=101), Ca=400)

shinyServer(function(input, output){
    output$Ci <- renderPlot({

        # with(r, plot(VPD, ALEAF, type='l'))
        # pl <- qplot(data=r, x = Ci, y = ALEAF)
        pl <- ggplot(data = r, aes(x = Ci, y = ALEAF)
        )

        pl + geom_line()
    })   
})

