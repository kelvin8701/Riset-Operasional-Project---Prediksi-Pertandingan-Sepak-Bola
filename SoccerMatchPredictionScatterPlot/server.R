library(shiny)

shinyServer(function(input, output, session) {
    df <- reactive({Combined[, c(input$xCol, input$yCol)]})

    output$plot <- renderPlot({plot(df(), pch = 20, cex = 3, col = "blue",
                                    main = "Away Model vs Home Model")})
})
