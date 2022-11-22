

LETTERS <- c("A" , "B", "C", "D", "E", "F", "G", "H","I", "J", "K",
             "L", "M" ,"N", "O", "P", "Q", "R", "S",
             "T", "U","V", "W", "X","Y", "Z")

letters <- c("a", "b", "c", "d", "e","f", "g", "h",
             "i", "j", "k", "l", "m", "n", "o" ,"p",
             "q", "r", "s","t", "u", "v" ,"w" ,"x" ,"y" ,"z")


1.
#a
LETTERS[1:11]

#b
letters[1:26 %% 2!= 0]

#c
vowels <- LETTERS [c(1,5,9,15,21)]
vowels

#d
letters[21:26]

#e
letters[15:24]

2.
#a
city <- c("Tuguegarao City","Manila","Iloilo City","Tacloban","Samal Island","Davao City")
city

#b
temperature <- c(42,39,34,34,30,27)
temperature

#c
names(temperature) <- city
temperature   

#e
temperature[5:6] 

#2 matrices
#a
m2 <- matrix(data = c(1:8,11:14),3,4)
m2

#b
m2*2

#c
m2[2,]

#d
m2[c(1,2),c(3,4)]

#e
m2[c(3),c(2,3)]

#f
m2[,4]

#g
dimnames(m2) <- list(c("isa", "dalawa", "tatlo"),c("uno", "dos", "tres", "quatro"))
m2

#h
dim(m2) <- c(6,2)
m2


#3 arrays

#a
arr <- c(1, 2, 3, 6, 7, 8, 9, 0, 3, 4, 5, 1)
arr

#b
value <- array(rep(arr, 2), dim = c(2,4,3))
value

#c
dimnames(value) <- list(letters[1:2], LETTERS[1:4], c("1st-Dimensional Array", "2nd-Dimentional Array", "3rd-Dimensional Array"))
value
