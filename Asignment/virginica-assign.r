iris_data <- data.frame(iris)
iris_data

iris_data[iris_data$Species == 'virginica' ,]

sbst <- subset(iris_data, Species == 'virginica' )
sbst


bin <- iris$Sepal.Length[101:150]
bin

din1 <- iris$Sepal.Width[101:150]
din1 

bin2 <- iris$Petal.Length[101:150]
bin2

din4 <- iris$Petal.Width[101:150]
din4

mn3 <- c(bin, din1, bin2, din4)
mn3

mean(mn3)
