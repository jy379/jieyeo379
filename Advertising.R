data_path <- "Datasets/Advertising.csv"
data <- read.csv(data_path)

print(head(data))
print(class(data))
print(dim(data))
print(colnames(data))

model <- lm(sales ~ TV, data = data)
print(summary(model))

plot(sales ~ TV, data = data)
abline(model)