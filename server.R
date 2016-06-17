library(UsingR)
library(caret)
library(shiny)
data("father.son")

#Duplicate son heights values are identified
shdup <- as.numeric(names(which(table(father.son$sheight)>1)))

#Dataset with no duplicates for son heights
fsnodup <- father.son[!(father.son$sheight %in% shdup),]

fitlm <- train(sheight~fheight, data = fsnodup, method='lm')
lmcoeff <- summary(fitlm)$coeff[2,1]
inter <- summary(fitlm)$coeff[1,1]
predsheight <- function(fh1) (fh1*lmcoeff)+inter

shinyServer(
    function(input, output){
    output$fhi1 <- renderPrint({input$fh1})
    output$sho1 <- renderPrint({predsheight(input$fh1)})
    }
)