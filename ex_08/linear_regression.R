# Install Packages needed for Analysis
install.packages("ggplot2")
install.packages("dplyr")
install.packages("broom")
install.packages("ggpubr")

# Load Packages
library(ggplot2)
library(dplyr)
library(broom)
library(ggpubr)

# Load the data in R
incm_hppy_data <- read.csv("C:\\Users\\patgi\\OneDrive\\Desktop\\m_tech\\2nd_semester\\big_data_analytics_lab\\Exercise 8\\income.data.csv")
head(incm_hppy_data)
summary(incm_hppy_data)

# Make Sure data meets 4 main assumption for linear regression
# 1. Independence of Observation(aka no autocorrelation)
# 2. Normality : whether dependent variable follows normal distribution
hist(incm_hppy_data$happiness)
# 3. Linearity : relationship between independent and dependent variable must be linear.
plot(happiness ~ income, data = incm_hppy_data)
# 4. Homoscedasticity : prediction error doesn't change significantly over the range of prediction of model.

# Perform Linear Regression Analysis
income.happiness.lm <- lm(happiness ~ income, data = incm_hppy_data)
summary(income.happiness.lm)

# Check for Homoscedasticity
par(mfrow=c(2,2))
plot(income.happiness.lm)
par(mfrow=c(1,1))

# Visualise the results with a Graph
income.graph<-ggplot(incm_hppy_data, aes(x=income, y=happiness))+geom_point()
income.graph
income.graph <- income.graph + geom_smooth(method="lm", col="black")
income.graph
income.graph <- income.graph + stat_regline_equation(label.x = 3, label.y = 7)
income.graph
income.graph + theme_bw() + labs(title = "Reported happiness as a function of income",
                                 x = "Income (x$10,000)",
                                 y = "Happiness score (0 to 10)")


# ------------------- 

# Install and load the necessary package
install.packages("MASS")  # Install only if not already installed
library(MASS)

# Load the dataset
data(Boston)

# Explore the dataset
summary(Boston)

# Perform linear regression
lm_model <- lm(medv ~ ., data = Boston)

# Print the summary of the linear regression model
summary(lm_model)

# Example: Predicting the price of a house

# Provide the values for the independent variables (features) in the model equation
new_data <- data.frame(
  crim = 0.1,    # per capita crime rate by town
  zn = 20,       # proportion of residential land zoned for lots over 25,000 sq.ft.
  indus = 8,     # proportion of non-retail business acres per town
  chas = 0,      # Charles River dummy variable (= 1 if tract bounds river; 0 otherwise)
  nox = 0.5,     # nitric oxides concentration (parts per 10 million)
  rm = 6,        # average number of rooms per dwelling
  age = 60,      # proportion of owner-occupied units built prior to 1940
  dis = 5,       # weighted distances to five Boston employment centers
  rad = 4,       # index of accessibility to radial highways
  tax = 300,     # full-value property-tax rate per $10,000
  ptratio = 15,  # pupil-teacher ratio by town
  black = 350,   # 1000(Bk - 0.63)^2 where Bk is the proportion of blacks by town
  lstat = 10     # % lower status of the population
)

# Make predictions using the trained linear regression model
predicted_prices <- predict(lm_model, newdata = new_data)

# Print the predicted prices
print(predicted_prices)

