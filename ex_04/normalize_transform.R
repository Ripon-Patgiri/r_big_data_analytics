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
