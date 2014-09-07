library(shiny)

shinyUI(pageWithSidebar(
  headerPanel("Data Science FTW"),
  sidebarPanel(
    textInput(inputId="text1", label= "Input Text1"),
    textInput(inputId="text2", label= "Input Text2"),
    actionButton("goButton", "Go!"),
    sliderInput('mu', 'Guess at the mean', value = 70, min = 62, max = 74, step = .5),
    numericInput('id1', 'Numeric input, labeled id1', 0, min=0, max=10, step=1),
    checkboxGroupInput("id2", "Checkbox", c("Value 1" = "1", "Value 2" = "2", "Value 3" = "3")),
    dateInput("date", "Date:"),
    h3('Sidebar text'),
    h1('Sidebar panel'),
    h2('h2'),
    h4('h4'),
    numericInput('glucose', 'Glucose mg/dl', 90, min=50, max=200, step=5),
    submitButton('Submit')
  ),
  mainPanel(
    p('Output text1'),
    textOutput('text1'),
    p('Output text2'),
    textOutput('text2'),
    p('Output text3'),
    textOutput('text3'),
    p('Output text4'),
    textOutput('text4'),
    p('Inside text, but nonreactive'),
    textOutput('text5'),
    
    plotOutput('newHist'),
    h3('Main Panel text'),
    code('some code'),
    p('some ordinary text'),
    h3('Illustrating outputs'),
    h4('You entered'),
    verbatimTextOutput("oid1"),
    h4('You entered'),
    verbatimTextOutput("oid2"),
    h4('You entered'),
    verbatimTextOutput("odate"),
    h3('Results of prediction'),
    h4('You entered'),
    verbatimTextOutput("inputValue"),
    h4('Which resulted in a prediction value of '),
    verbatimTextOutput("prediction")
  )
))





