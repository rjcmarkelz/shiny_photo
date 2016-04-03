library(shiny)
library(ggplot2)
library(plantecophys)

shinyServer(function(input, output){
    output$boxPlot <- renderPlot({

        pl <- ggplot(data = iris, 
                    aes_string(x = "Species",
                               y = input$trait,
                               fill = "Species")
        )

        pl + geom_boxplot()
    })
})