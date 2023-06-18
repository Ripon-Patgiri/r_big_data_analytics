# Normalization : A type of Data Transformation in which we scale a dataset to a fixed range, typically between 0-1

# In our example, we will use two type of Normalization Technique to scale a dataset.

# Random Dataset Ranging from -100 to 100(excluding -100 and 100)
x <- sample(-100:100, 100)
hist(x,
     main = "Before Normalization",
     col = "Blue",
     border = "red")

# 1. Min Max Normalization

min_max_x = (x - min(x))/(max(x) - min(x))
hist(min_max_x,
     main = "After Min Max Normalization",
     col = "Dark Blue",
     border = "yellow")

# 2. Z-Score Normalization

z_score_x = (x - mean(x))/ sd(x)
hist(z_score_x,
     main = "After Z-Score Normalization",
     col = "Green",
     border = "white")
-------------------------------------------------------------------------
  # Data Transformation : techniques applied to data for preparation of analysis.
  
  # In our example, A dataset that is right skewed is transformed to a Normal Distribution
  # Three Methods Available : 1. Square Root Transformation, 2. Cube Root Transformation, 3. Log Transformation
  
  install.packages("rcompanion")
library("rcompanion")

# Set the seed for Reproducibility
set.seed(123)

# Creating a right skewed dataset
df <- rexp(10000, rate = 1)

# Checking df Distribution Pattern
plotNormalHistogram(df,
                    main="Right Skewed Dataset",
                    col="red")

# 1. Square Root Transformation
df_sqrt = sqrt(df)
plotNormalHistogram(df_sqrt,
                    main="After Square Root Transformation",
                    col="yellow")

# 2. Cube Root Transformation
df_cbrt = sign(df) * abs(df)^(1/3)
plotNormalHistogram(df_cbrt,
                    main = "After Cube Root Transformation",
                    col="green")

# 3. Log Transformation
df_log = log(df)
plotNormalHistogram(df_log,
                    main = "After Log Transformation",
                    col = "pink")


# ---------------------- 

# Load the dataset from the web (URL of the dataset)
url <- "https://archive.ics.uci.edu/ml/machine-learning-databases/iris/iris.data"
iris <- read.csv(url, header = FALSE)

# Set column names
colnames(iris) <- c("sepal_length", "sepal_width", "petal_length", "petal_width", "class")

# Pre-visualization
summary(iris)

# Square root transformation
iris$sqrt_sepal_width <- sqrt(iris$sepal_width)

# Pre-visualization
hist(iris$sqrt_sepal_width)

# Cube root transformation
iris$cbrt_petal_length <- sign(iris$petal_length) * abs(iris$petal_length)^(1/3)

# Pre-visualization
hist(iris$cbrt_petal_length)

# Log transformation
iris$log_sepal_length <- log(iris$sepal_length)

# Pre-visualization
hist(iris$log_sepal_length)

# Min-max normalization
iris$minmax_petal_width <- (iris$petal_width - min(iris$petal_width)) / (max(iris$petal_width) - min(iris$petal_width))

# Pre-visualization
hist(iris$minmax_petal_width)

# Z-score normalization
iris$zscore_sepal_width <- scale(iris$sepal_width)

# Pre-visualization
hist(iris$zscore_sepal_width)

# Z-score normalization
iris$zscore_sepal_width <- scale(iris$sepal_width)

# Pre-visualization
hist(iris$zscore_sepal_width)

# Post-visualization
par(mfrow = c(1, 2))
hist(iris$sepal_width, main = "Original sepal_width")
hist(iris$sqrt_sepal_width, main = "Square Root Transformation of sepal_width")

