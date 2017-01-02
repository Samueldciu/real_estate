library(shiny)



shinyUI(fluidPage(
  
  # Application title
  titlePanel("Real estate Price Prediction"),
  
  # Sidebar with a slider input for number of bins 
  
    sidebarPanel(
      numericInput("age", "What is the age of your house?", 
                   1, min = 1, max = 200, step=1),
      numericInput('bedrooms', 'Number of bedrooms:', 1, min = 1, max = 20, step = 1),
      sliderInput("squarefeet", "House size (sqft):", value = 500, min = 0, max = 15000),
      sliderInput("lotsize", "Lot size (sqft):", value = 500, min = 0, max = 15000)
    ),
    
    
    mainPanel(
  
        tabsetPanel(
          # prediction tab
          tabPanel("House Price Estimation", mainPanel(
            br(),
            h4("You can expect "),
            
            textOutput("prediction"))),
            
          
         
          tabPanel("Documentation",includeMarkdown("F:\\doc.rmd"))
  
          ))

))
