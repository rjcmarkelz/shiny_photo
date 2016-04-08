library(shiny)

shinyUI(fluidPage(

    titlePanel("PBI200C Photosynthetic Assimilation Curves"),

    # textOutput("text1"),
    plotOutput("ACi_curve"),
    
    hr(),
    # sidebarLayout(
    #     sidebarPanel(

    fluidRow(

        column(3,
            sliderInput("PPFD",
                label = "PAR: Photosynthetically Active Radiation", min = 0,
                max = 2000, value = 1000),

            sliderInput("Tleaf",
                label = "Temperature Leaf (degrees C)",
                min = 0, max = 50, value = 25)
            ),

        column(4,
            sliderInput("Vcmax",
                label = "Vcmax",
                min = 0, max = 150, value = 50),

            sliderInput("Jmax",
                label = "Jmax",
                min = 0, max = 150, value = 100)
            ),

        column(5,
            sliderInput("alpha",
                label = "alpha - Quantum yield of electron transport (mol mol-1)",
                min = 0, max = 1, value = 0.24),

            sliderInput("Q10",
                label = "Q10- Respiration response to temperature",
                min = 0, max = 3, value = 1.92)
        )
    )

))