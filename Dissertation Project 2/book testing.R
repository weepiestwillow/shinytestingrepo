library(shiny)

ui <- fluidPage(
  selectInput("dataset", label = "Data", choices = ls("package:datasets")),
  verbatimTextOutput("summary"),
  tableOutput("table")
)

server <- function(input, output, session) {
  
}

shinyApp(ui, server)


