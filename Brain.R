data_path <- "Datasets/GA-brain-volumes-1-feature.csv"
data <- read.csv(data_path, header = FALSE)
colnames(data) <- c("GA", "BrainVol")

print(head(data))
print(class(data))
print(dim(data))
print(colnames(data))

model <- lm(GA ~ BrainVol, data = data)
print(summary(model))

plot(GA ~ BrainVol, data = data)
abline(model)