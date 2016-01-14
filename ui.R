library(shiny)
library(caret)

shinyUI(pageWithSidebar(  
   headerPanel("Heart Disease Prediction"),  
   sidebarPanel(    
     h3("Coronary Heart Disease Risk Factors"),
     h4("-----------------"),
     h4("Family History of Heart Disease"),
     checkboxInput("famhist", label = "Yes", value = FALSE),
     sliderInput("sbp", "Blood Pressure (Systolic)",value = 110, min = 100, max = 220, step = 1), 
     sliderInput("tobacco", "Tobacco Consumption",value = 0, min = 0, max = 100, step = 1), 
     sliderInput("ldl", "LDL Value",value = 3, min = 0.5, max = 20, step = 0.25), 
     sliderInput("alcohol", "Alcohol Consumption",value = 0, min = 0, max = 200, step = 5), 
     sliderInput("age", "Pick patient's age",value = 50, min = 20, max = 100, step = 1)
   ) ,
   mainPanel(    
     h4("Coronary Heart Disease Predictor using GLM"),
     textOutput("predGLM"),
     h4("Coronary Heart Disease Predictor using Random Forest"),
     textOutput("predRF")
   )
))
