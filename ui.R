library(shiny)

shinyUI(fluidPage(
    titlePanel("Photosynthesis Learning App"),
    helpText("Play With the Input Values Below"),
    
    sidebarLayout(
        sidebarPanel(

            # radioButtons("Parameters",
            #     "Choose something to display",
            #     c("Photosynthesis")),

            # numericInput("VPD",
            #     label = "Vapor Pressure Deficit:",
            #     min = 0, max = 10, value = 1.5),

            numericInput("PPFD",
                label = "PPFD Value:",
                min = 0, max = 1200, value = 1000),

            numericInput("Vcmax",
                label = "Vcmax:",
                min = 0, max = 150, value = 50),

            numericInput("Jmax",
                label = "Jmax:",
                min = 0, max = 120, value = 100),

            numericInput("Tleaf",
                label = "Temperature Leaf:",
                min = 0, max = 100, value = 25)
        ),

        mainPanel(
            # textOutput("text1"),
            plotOutput("ACi_curve")
        )
    )
))