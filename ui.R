shinyUI(
    navbarPage("Probability of Death",
        tabPanel("Run App",
            pageWithSidebar(
                headerPanel("Probabilities of Death in the Current Day"),
                sidebarPanel(
                    numericInput('age', 'Age in Years', 18, 
                                 min = 18, max = 150, step = 1),
                    numericInput('smoke', 'Cigarretes Smoked per Day', 0, 
                                 min = 0, max = 100, step = 1),
                    numericInput('exercise', 'Days of Exercise per Week', 0, 
                                 min = 0, max = 7, step = 1),
                    submitButton('Submit')
                ),
            mainPanel(
                h3('Results of prediction'),
                h4('Age'),
                verbatimTextOutput("inputAge"),
                h4('Cigarretes Smoked per Day'),
                verbatimTextOutput("inputSmoke"),
                h4('Days of Exercise per Week'),
                verbatimTextOutput("inputExercise"),
                h4("Which resulted in a prediction of"),
                verbatimTextOutput("prediction")
                )
            )),
            tabPanel("Documentation",
                     mainPanel(
                         includeMarkdown("Shiny_Death_Documentation.md")
                     )
            )
        )
)