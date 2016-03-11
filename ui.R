library(shiny)

shinyUI(fluidPage(

    titlePanel("Here is a title"),

    helpText("here is some information"),

    sidebarLayout(
        sidebarPanel(
            radioButtons("trait",
                "Choose something to display",
                c("Sepal.Length",
                    "Sepal.Width",
                    "Petal.Length",
                    "Petal.Width")
                )),

        mainPanel(plotOutput("boxPlot"))
        )
    ))