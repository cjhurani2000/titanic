#libraries
library(readr)
titanic_original <- read_csv("~/Data Science/titanic/titanic_original.csv")
View(titanic_original)
library(dplyr)

#arrange to see missing values in embarked
titanic_original <- arrange(titanic_original, embarked)
#fill in missing values
titanic_original$embarked[is.na(titanic_original$embarked)] <- "S"

#save and calculcate mean
tmean <- mean(titanic_original$age, na.rm = TRUE)
#arrange to see missing values
titanic_original <- arrange(titanic_original, age)
#fill in missing values with mean
titanic_original$age[is.na(titanic_original$age)] <- tmean

#arrange boat to see missing values
titanic_original <- arrange(titanic_original, boat)
#fill in missing values with NA
titanic_original$boat[is.na(titanic_original$boat)] <- 'NA'

#add column
titanic_original$has_cabin_number <- 1
#arrange to view missing values
titanic_original <- arrange(titanic_original, cabin)
#denote rooms without cabin numbers
titanic_original[which(is.na(titanic3$cabin)), "has_cabin_number"] <- 0

#create file
write.csv(titanic_original, "titanic_clean.csv")