library(readr)
titanic_original <- read_csv("~/Data Science/titanic/titanic_original.csv")
View(titanic_original)
library(dplyr)
titanic_original <- arrange(titanic_original, desc(embarked))
titanic_original$embarked[1308:1310] <- "S"
mean(titanic_original$age, na.rm = TRUE)
titanic_original <- arrange(titanic_original, desc(age))
titanic_original$age[1047:1310] <- 29.88113
titanic_original <- arrange(titanic_original, desc(boat))
titanic_original$boat[487:1310] <- 'NA'
titanic_original$has_cabin_number <- 0
titanic_original <- arrange(titanic_original, desc(cabin))
titanic_original$has_cabin_number[1:295] <- 1
write.csv(titanic_original, "titanic_clean.csv")
