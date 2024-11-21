#
# This is a Shiny web application. You can run the application by clicking
# the 'Run App' button above.
#
# Find out more about building applications with Shiny here:
#
#    https://shiny.posit.co/
#
#c:\Users\Admin\Documents\data_scince\5 Data Scientist. Аналитика. Средний уровень\4\titanic_hw\data\Titanic.csv
library(shiny)
#tit <- read.csv('./4/titanic_hw/data/Titanic.csv')

# Define UI for application that draws a histogram
ui <- fluidPage(

    # Application title
    titlePanel("Titanic passengers"),

    fluidRow(
        column(
            6,
            selectInput(
                'barplot_col',
                'Barplot:',
                choices = c("Survived" = "3", "PClass" = "4", "Sex" = "6")
            ),
        ),
        column(
            6,
            selectInput(
                "hist_col",
                "Histogram:",
                choices = c("Age" = "7", "Fare" = "11")
            ),
        )
    ),
    fluidRow(
        column(
            6,
            selectInput(
                "barplot_color",
                "Color 1:",
                choices = c(`Red` = "red",
                            `Yellow` = "yellow",
                            `Skyblue` = "skyblue",
                            `Aquamarine` = "aquamarine")
            ),
        ),
        column(
            6,
            selectInput(
                "hist_color",
                "Color 2:",
                choices = c(`Red` = "darkred",
                            `Yellow` = "lightyellow",
                            `Skyblue` = "darkblue",
                            `Aquamarine` = "aquamarine4")
            ),
        )
    ),
    
    # Show a plot of the generated distribution
    mainPanel(
      splitLayout(cellWidths = c("50%", "50%"), plotOutput("distPlot1"), plotOutput("distPlot2"))
    )
)

# Define server logic required to draw a histogram
server <- function(input, output) {
    
    output$distPlot1 <- renderPlot({
        # generate bins based on input$bins from ui.R
        column    <- as.integer(input$barplot_col)
        #View(column)
        x <- tit[, column]
        
        # draw the histogram with the specified number of bins
        barplot(table(x), main="HW", col=input$barplot_color, ylab="Count HW", xlab="HWww")
    })
    
    output$distPlot2 <- renderPlot({
        # generate bins based on input$bins from ui.R
        column    <- as.integer(input$hist_col)
        x <- tit[, column]
        
        # draw the histogram with the specified number of bins
        hist(x, breaks = 7, col = input$hist_color, border = 'white',
             ylab = 'Freq',
             main = 'Histogram HW')
    })
}

# Run the application 
shinyApp(ui = ui, server = server)
