data_path <- "Datasets/Boston.csv"
data <- read.csv(data_path)

print(head(data))
print(class(data))
print(dim(data))
print(colnames(data))

model <- lm(medv ~ lstat, data = data)
print(summary(model))

plot(medv ~ lstat, data = data)
abline(model)