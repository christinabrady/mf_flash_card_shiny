### UI defs for ML flash cards app

ui <- shinyUI(
  navbarPage(
    "Machine Learning Flash Cards",
    theme = shinytheme("cerulean"),
    tabPanel("Cards",
      fluidRow(
        column(width = 10, offset = 1,
          uiOutput("card_name"),
          actionButton(inputId = "reveal",
            label = "Reveal")
        )
      ),
      fluidRow(
        column(width = 8,
          imageOutput("card")
        ),
        column(width = 4,
          actionButton(inputId = "correct",
            label = "Correct"),
          actionButton(inputId = "incorrect",
            label = "Incorrect"),
          actionButton(inputId = "next",
            label = "Next")
        )
      )
    ),
    tabPanel("Stats",
      tableOutput("statistics")
    )
  )
)
