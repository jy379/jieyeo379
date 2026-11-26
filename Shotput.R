data_path <- "Datasets/Shotput.csv"
data <- read.csv(data_path)

print(head(data))
print(class(data))
print(dim(data))
print(colnames(data))

model <- lm(shot.putt ~ power.clean, data = data)
print(summary(model))

plot(shot.putt ~ power.clean, data = data)
abline(model)