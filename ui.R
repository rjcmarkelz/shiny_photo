library(shiny)

shinyUI(fluidPage(
    titlePanel("Photosynthesis App"),
    helpText("here is some information to help you"),
    sidebarLayout(
        sidebarPanel(
            radioButtons("trait",
                "Choose something to display",
                c("Photosynthesis")
                )),

        mainPanel(plotOutput("Ci"))
        )
    ))