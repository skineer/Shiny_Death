deathRisk <- function(age, smoke, exercise){
    (age / 800) + (smoke / 600) - (exercise / 400)
} 
shinyServer(
    function(input, output){
        output$inputAge <- renderPrint({input$age})
        output$inputSmoke <- renderPrint({input$smoke})
        output$inputExercise <- renderPrint({input$exercise})
        output$prediction <- renderText({
            if(input$age < 18 | input$age > 100) "Age must be between 18 and 100"
            else if (input$smoke < 0 | input$smoke > 100) "Smoke must be between 0 and 100"
            else if (input$exercise < 0 | input$exercise > 7) "Exercises must be between 0 and 7"
            else deathRisk(input$age, input$smoke, input$exercise)})
    }
)