iris_data <- data.frame(iris)
iris_data

iris_data[iris_data$Species == 'versicolor' ,]

sbst <- subset(iris_data, Species == 'versicolor' )
sbst

bin <- iris$Sepal.Length[1:50]
bin

din1 <- iris$Sepal.Width[1:50]
din1

bin2 <- iris$Petal.Length[1:50]
bin2

din4 <- iris$Petal.Width[1:50]
din4

mn <- c(bin, din1, bin2, din4)
mn

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

mn5 <- c(mn, mn2, mn3)
mn5

mean(mn5)

