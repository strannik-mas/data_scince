#
# This is a Shiny web application. You can run the application by clicking
# the 'Run App' button above.
#
# Find out more about building applications with Shiny here:
#
#    https://shiny.posit.co/
#
library(tidyverse)
library(shiny)
#View(diamonds)

# Define UI for application that draws a histogram
ui <- fluidPage(

    # Application title
    titlePanel("Diamonds"),

    # Sidebar with a slider input for number of bins 
    sidebarLayout(
        sidebarPanel(
          selectInput('ucolor', 'Fill color:',
                      choices = c(`Red` = "red",
                                  `Yellow` = "yellow",
                                  `Skyblue` = "skyblue",
                                  `Aquamarine` = "aquamarine"))
        ),

        # Show a plot of the generated distribution
        mainPanel(
           plotOutput("distPlot")
        )
    )
)

# Define server logic required to draw a histogram
server <- function(input, output) {

    output$distPlot <- renderPlot({
        # generate bins based on input$bins from ui.R
        x    <- diamonds[, 2]

        # draw the histogram with the specified number of bins
        barplot(table(x), main="Diamonds", col=input$ucolor, ylab="Count cut", xlab="Cut")
    })
}

# Run the application 
shinyApp(ui = ui, server = server)
