data_path <- "Datasets/Advertising.csv"
df <- read.csv(data_path)

print(head(df))
print(class(df))
print(dim(df))
print(colnames(df))

model <- lm(sales ~ TV + radio + newspaper, data = df)
print(summary(model))

sales_hat <- predict(model, df[c("TV", "radio", "newspaper")])
plot(sales_hat ~ sales, data = df)
lines(df$sales, df$sales)