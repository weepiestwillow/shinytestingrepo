library(shiny)

ui <- fluidPage(
  textInput("inputname", "What is your name?", value = "John Doe"),
  verbatimTextOutput("name")
)

server <- function(input, output, session) {
  name <- reactive({
    input$inputname
  }) 
  output$name <- renderText({
    paste(paste("Hello,", input$inputname, sep = " "), "!", sep = "")
  })
  
}

shinyApp(ui, server)