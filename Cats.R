library(MASS)

print(head(cats))
print(class(cats))
print(dim(cats))
print(colnames(cats))

model <- lm(Hwt ~ Bwt, data = cats)
print(summary(model))

plot(Hwt ~ Bwt, data = cats)
abline(model)