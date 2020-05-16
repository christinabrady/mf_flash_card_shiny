
server <- function(input, output, session){
  dbcon <- odbcConnect("ptracking")
  all_cards <- sqlFetch(dbcon, "ml_flash_cards")

  card_showing <- sample(all_cards$card, 1, replace = T)


  output$card_name <- renderUI({
    h2(card_showing)
  })

  observeEvent(input$reveal, {
    output$card <- renderImage({
      flpath <- sprintf("cards/%s.svg", card_showing)
      list(src = normalizePath(flpath),
        contentType = 'image/svg+xml',
        width = 1200,
        heigth = 800,
        alt = card_showing)
      }, deleteFile = FALSE)
  })

  observeEvent(input$correct, {
    updateTable(dbcon, "correct", card_showing)
  })

  observeEvent(input$incorrect, {
    updateTable(dbcon, "incorrect", card_showing)
  })

  output$statistics <- function(){
    sqlFetch(dbcon, "ml_flash_cards") %>%
      knitr::kable("html") %>%
      kable_styling(full_width = FALSE)
  }
}
