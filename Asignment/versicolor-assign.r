iris_data <- data.frame(iris)
iris_data

iris_data[iris_data$Species == 'versicolor' ,]

sbst <- subset(iris_data, Species == 'versicolor' )
sbst

bin <- iris$Sepal.Length[51:100]
bin

din1 <- iris$Sepal.Width[51:100]
din1 

bin2 <- iris$Petal.Length[51:100]
bin2

din4 <- iris$Petal.Width[51:100]
din4

mn2 <- c(bin, din1, bin2, din4)
mn2

mean(mn2)
