library(shiny)


shinyUI(pageWithSidebar(
    headerPanel("Sum and MeanCalculator"),
    sidebarPanel(
        h3("How to use?"),
        h4("Write a number into the Input number 1 textfield and an other number in the Input number 2 field. Sum of them and mean of them will be visible."),
        textInput(inputId="n1",label="Input number 1"),
        textInput(inputId="n2",label="Input number 2")
        ),
    mainPanel(
        p('Output number 1'),
        textOutput('n1'),
        p('Output number 2'),
        textOutput('n2'),
        p('Sum of number 1 and number 2'),
        textOutput('n3'),
        p('Mean of number 1 and number 2'),
        textOutput('n4')
        )
    ))