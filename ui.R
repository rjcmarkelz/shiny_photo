library(shiny)

shinyUI(fluidPage(
    titlePanel("Photosynthesis Teaching App"),
    helpText("here is some information to help you"),
    
    sidebarLayout(
        sidebarPanel(

            radioButtons("trait",
                "Choose something to display",
                c("Photosynthesis","other")),

            numericInput("PPFD",
                label = "PPFD Value:",
                min = 0, max = 2000, value = 100)
        ),

        mainPanel(
            textOutput("text1"),
            plotOutput("ACi_curve")
        )
    )
))