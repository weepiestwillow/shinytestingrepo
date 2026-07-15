library(shiny)

ui <- fluidPage(
  
  textInput("name", placeholder = "Your name", label = ""),
  
  sliderInput("date", 
              label = "Select Interval",
              min = as.Date("2000-01-01"),
              max = as.Date("2026-12-31"),
              value = as.Date("2026-07-15"),
              ),
  
  sliderInput("number",
              label = "pick your number!",
              min = 0,
              max = 100,
              step = 5,
              value = 50,
              animate = TRUE),
  
  selectInput(
    inputId = "grouped_choice",
    label = "Choose an option:",
    choices = list(
      "Fruit" = list("Apple" = "apple", "Banana" = "banana", "Cherry" = "cherry"),
      "Vegetables" = list("Carrot" = "carrot", "Broccoli" = "broccoli", "Spinach" = "spinach"),
      "Grains" = list("Rice" = "rice", "Quinoa" = "quinoa", "Oats" = "oats")
      ),
    selected = "apple"
  )

)

server <- function(input, output, session) {
  
}

shinyApp(ui, server)