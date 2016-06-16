library(UsingR)
library(caret)
data("father.son")

a <- as.numeric(names(which(table(father.son$sheight)>1)))