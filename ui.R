library(shiny)

shinyUI(fluidPage(
    titlePanel("Photosynthetic Assimilation Curves"),
    helpText("Model input parameters below."),
    
    sidebarLayout(
        sidebarPanel(

            sliderInput("PPFD",
                label = "PAR: Photosynthetically Active Radiation",
                min = 0, max = 2000, value = 1000),

            sliderInput("Vcmax",
                label = "Vcmax",
                min = 0, max = 150, value = 50),

            sliderInput("Jmax",
                label = "Jmax",
                min = 0, max = 120, value = 100),

            sliderInput("Tleaf",
                label = "Temperature Leaf (degrees C)",
                min = 0, max = 100, value = 25),

            sliderInput("RH",
                label = "Relative Humidity",
                min = 0, max = 100, value = 25),

            sliderInput("g0",
                label = "g0 - Ball-Berry Model",
                min = 0, max = 10, value = 2),

            sliderInput("g1",
                label = "g1- Ball-Berry Model",
                min = 0, max = 10, value = 2),
            
            sliderInput("alpha",
                label = "alpha - Quantum yield of electron transport (mol mol-1)",
                min = 0, max = 1, value = 0.24),

            sliderInput("theta",
                label = "theta- shape of light response curve",
                min = 0, max = 1, value = 0.85),

            sliderInput("Q10",
                label = "Q10- Respiration response to temperature",
                min = 0, max = 3, value = 1.92)

        ),

        mainPanel(
            # textOutput("text1"),
            plotOutput("ACi_curve")
        )
    )
))