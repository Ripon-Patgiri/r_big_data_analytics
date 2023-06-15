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
