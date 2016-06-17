shinyUI(pageWithSidebar(
        headerPanel("Predicting Sons Height Using Fathers Height"),
        sidebarPanel(
          numericInput('fh1', 'Enter fathers height in inches', 0, min=0, max=84, step=0.5)
),

mainPanel(
  h3('Fathers height entered is'),
  verbatimTextOutput("fhi1"),
  h3('Prediction for Sons height is'),
  verbatimTextOutput("sho1")
)
)
)