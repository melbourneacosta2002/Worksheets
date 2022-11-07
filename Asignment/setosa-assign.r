iris_data <- data.frame(iris)
iris_data

iris_data[iris_data$Species == 'setosa' ,]

sbst <- subset(iris_data, Species == 'setosa' )
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

mean(mn)

