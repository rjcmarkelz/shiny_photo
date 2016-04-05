library(shiny)

shinyUI(fluidPage(
    titlePanel("Photosynthesis Assimilation Curves"),
    helpText("Model input parameters below. All are in umol m-2 s-1 unless otherwise noted"),
    
    sidebarLayout(
        sidebarPanel(

            # radioButtons("Parameters",
            #     "Choose something to display",
            #     c("Photosynthesis")),

            # numericInput("VPD",
            #     label = "Vapor Pressure Deficit:",
            #     min = 0, max = 10, value = 1.5),

            numericInput("PPFD",
                label = "PAR",
                min = 0, max = 1200, value = 1000),

            numericInput("Vcmax",
                label = "Vcmax",
                min = 0, max = 150, value = 50),

            numericInput("Jmax",
                label = "Jmax",
                min = 0, max = 120, value = 100),

            numericInput("Tleaf",
                label = "Temperature Leaf (degrees C)",
                min = 0, max = 100, value = 25),

            numericInput("RH",
                label = "Relative Humidity",
                min = 0, max = 100, value = 25),

            numericInput("g0",
                label = "g0 - Ball-Berry Model",
                min = 0, max = 10, value = 2),

            numericInput("g1",
                label = "g1- Ball-Berry Model",
                min = 0, max = 10, value = 2),
            
            numericInput("alpha",
                label = "alpha - BQuantum yield of electron transport (mol mol-1)",
                min = 0, max = 1, value = 0.24),

            numericInput("theta",
                label = "theta- shape of light response curve",
                min = 0, max = 1, value = 0.85),

            numericInput("Q10",
                label = "Q10- Respiration to temperature",
                min = 0, max = 3, value = 1.92)

        ),

        mainPanel(
            # textOutput("text1"),
            plotOutput("ACi_curve")
        )
    )
))