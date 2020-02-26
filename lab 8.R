library(dplyr)
library(ggplot2)
library(GGally)
data(iris)
iris <- as.data.frame(iris)
iris <- filter(iris, iris$Species != "virginica")
lm(iris$Species~., iris)

iris$Species <- iris$Species == "setosa"
samp <- sample(1:dim(iris)[1], 0.8* dim(iris)[1])
train <- iris[samp,]
test<- iris[-samp,]

ggpairs(train)

logistic <- glm(Species~1, train, family = "binomial" )
summary(logistic)


count <- sum(train$Species)
p <- count / dim(train)[1]
odds <- p / (1-p)
log(odds)  #


logi2 <- glm(Species ~ train$Sepal.Length, train, family = "binomial")
mean(train[train$Species == TRUE,]$Sepal.Length )
mean(train[train$Species == FALSE,]$Sepal.Length )
prediction <- predict(logi2, test, type = "response")
