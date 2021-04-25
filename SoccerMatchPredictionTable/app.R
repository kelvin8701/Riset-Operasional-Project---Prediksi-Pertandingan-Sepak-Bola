library(shiny)
library(ggplot2)

ui <- fluidPage(
    title = "Examples of DataTables",
    sidebarLayout(
        sidebarPanel(
            conditionalPanel(
                'input.dataset === "Combined"',
                checkboxGroupInput("show_vars", "Columns in diamonds to show:",
                                   names(Combined), selected = names(Combined))
            ),
            conditionalPanel(
                'input.dataset === "mtcars"',
                helpText("Click the column header to sort a column.")
            ),
            conditionalPanel(
                'input.dataset === "iris"',
                helpText("Display 5 records by default.")
            )
        ),
        mainPanel(
            tabsetPanel(
                id = 'dataset',
                tabPanel("Combined", DT::dataTableOutput("mytable1")),
                tabPanel("mtcars", DT::dataTableOutput("mytable2")),
                tabPanel("iris", DT::dataTableOutput("mytable3"))
            )
        )
    )
)

server <- function(input, output) {
    output$Combined <- renderPlot({

    })
    # choose columns to display
    diamonds2 = Combined[sample(nrow(Combined), 1000), ]
    output$mytable1 <- DT::renderDataTable({
        DT::datatable(diamonds2[, input$show_vars, drop = FALSE])
    })

    # sorted columns are colored now because CSS are attached to them
    output$mytable2 <- DT::renderDataTable({
        DT::datatable(mtcars, options = list(orderClasses = TRUE))
    })

    # customize the length drop-down menu; display 5 rows per page by default
    output$mytable3 <- DT::renderDataTable({
        DT::datatable(iris, options = list(lengthMenu = c(5, 30, 50), pageLength = 5))
    })

}

shinyApp(ui, server)
