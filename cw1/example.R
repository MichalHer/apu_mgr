data(iris)
head(iris)

par(mfrow=c(2,2))
hist(iris$Sepal.Length, breaks = 20)
hist(iris$Sepal.Width, breaks = 20)

hist(iris$Petal.Length, breaks = 20)
hist(iris$Petal.Width, breaks = 20)

log.iris <- log(iris[, 1:4])
iris.species <- iris[,5]

par(mfrow = c(2,2))
hist(iris$Sepal.Length, breaks = 20)
hist(iris$Sepal.Width, breaks = 20)

hist(iris$Petal.Length, breaks = 20)
hist(iris$Petal.Width, breaks = 20)