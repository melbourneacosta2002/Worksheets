install.packages("dplyr")
library(dplyr)
library(tidyverse)

#1.
#a
Respondents <- c(seq(1,20))
Sex <- c(2,2,1,2,2,2,2,2,2,2,1,2,2,2,2,2,2,2,1,2)
FathersOccupation <- c(1,3,3,3,1,2,3,1,1,1,3,2,1,3,3,1,3,1,2,1)
Personsathome <- c(5,7,3,8,5,9,6,7,8,4,7,5,4,7,8,8,3,11,7,6) 
Siblingsatschool <- c(6,4,4,1,2,1,5,3,1,2,3,2,5,5,2,1,2,5,3,2)
Typesofhouses <- c(1,2,3,1,1,3,3,1,2,3,2,3,2,2,3,3,3,3,3,2)

dframe <- data.frame(Respondents,Sex,FathersOccupation,Personsathome,Siblingsatschool,Typesofhouses)

#b
summary(dframe)

#c
NO

#d
b <- subset(dframe[1:2, 1:6, drop = FALSE])
b

#e
b2 <- subset(dframe[c(3,5),c(2,4)])
b2

#f
b3 <- dframe[c(6)]
type_houses <- b3

#g
b22 <- subset(dframe[c(3,11),c(2,3)])
b22

#2. 
bf = data.frame(Ints=integer(),
                Doubles=double(), Characters=character(),
                Logicals=logical(),
                Factors=factor(),
                stringsAsFactors=FALSE)
print("Structure of the empty dataframe:")
print(str(bf))


