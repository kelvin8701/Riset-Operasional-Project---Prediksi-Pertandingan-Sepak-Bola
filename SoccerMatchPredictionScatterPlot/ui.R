library(shiny)

shinyUI(pageWithSidebar(
    titlePanel('Plotting the Soccer Match Prediction using shiny'),

    sidebarPanel(
        selectInput('xCol', 'X', names(Combined)),
        selectInput('yCol', 'Y', names(Combined))),

    mainPanel(plotOutput('plot'))
))
