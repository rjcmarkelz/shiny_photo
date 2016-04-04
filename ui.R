library(shiny)

shinyUI(fluidPage(
    titlePanel("Photosynthesis Teaching App"),
    helpText("Play With the Input Values"),
    
    sidebarLayout(
        sidebarPanel(

            radioButtons("trait",
                "Choose something to display",
                c("Photosynthesis","other")),

            # numericInput("VPD",
            #     label = "Vapor Pressure Deficit:",
            #     min = 0, max = 10, value = 1.5),

            numericInput("PPFD",
                label = "PPFD Value:",
                min = 0, max = 1200, value = 1000),

            numericInput("Vcmax",
                label = "Vcmax:",
                min = 0, max = 150, value = 50),

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