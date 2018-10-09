library(MASS)
data(Boston)
?Boston
Boston
summary(Boston$medv)

##log or sqrt transformation
hist(log(Boston$medv))
summary(log(Boston$medv))
summary(sqrt(Boston$medv))
Boston$rad = as.factor(Boston$rad)


Boston$medv_sqrt = sqrt(Boston$medv)
#### Simple Linear Regression

plot(Boston$lstat,Boston$medv)
cor(Boston$lstat,Boston$medv)

abline(mod1)

plot(Boston$lstat,Boston$medv_sqrt)

Boston$lstat_sqrt = sqrt(Boston$lstat)
### Model 1
mod1 = lm(medv~lstat,data=Boston)
summary(mod1)