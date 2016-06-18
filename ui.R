shinyUI(pageWithSidebar(
        headerPanel("Predicting Sons Height Using Fathers Height"),
        sidebarPanel(width = 6,
          h2('Description'),
          paste('This application will predict the height of son using the entered fathers height.',
                'The prediction model is based on a linear regression fit trained on the',
                'father-son dataset available in R. Entering the fathers height will reactively',
                'predict the height of the son'
                ),
          numericInput('fh1', 'Enter fathers height in inches', 0, step = 0.2)
),

mainPanel(
  h3('Fathers height entered is'),
  verbatimTextOutput("fhi1"),
  h3('Prediction for Sons height is'),
  verbatimTextOutput("sho1")
)
)
)