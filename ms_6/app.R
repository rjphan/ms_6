#
# This is a Shiny web application. You can run the application by clicking
# the 'Run App' button above.
#
# Find out more about building applications with Shiny here:
#
#    http://shiny.rstudio.com/
#

library(shiny)
h3("Red Meat Production")

ui <- fluidPage(

    titlePanel("GOV1005 Final Project"),
    
    navlistPanel("Header A",
                 tabPanel("Component 1"),
                 "Header B",
                 tabPanel("Component 3"),
                 tabPanel("Component 4")
    ),

    sidebarLayout(position = "right",
        sidebarPanel(img(src = "cartoon.png", height = 140, width = 200)),
        mainPanel(h3("Red Meat Production in the US Over Time"),
                  imageOutput("meat_clean_plot"),
                  br(),
                  br(),
                  br(),
                  br(),
                  br(),
                  br(),
                  actionButton("action", "Click")
    )
)

)

# Define server logic required to draw a histogram
server <- function(input, output) {
    
    output$meat_clean_plot <- renderImage({
        list(src = "meat_clean_plot.png",
             contentType = 'image/png',
             width = 550,
             height = 500)},
        deleteFile = FALSE
    )  
}

# Run the application 
shinyApp(ui = ui, server = server)
