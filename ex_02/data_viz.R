# Load the data
data(mtcars)

# Histogram
hist(mtcars$mpg,
     main = "Histogram of Miles per Gallon",
     xlab = "Miles per Gallon",
     col = "blue",
     border = "black")

# Bar Chart
barplot(table(mtcars$cyl),
        main = "Bar Chart of Number of Cylinders",
        xlab = "Number of Cylinders",
        ylab = "Frequency",
        col = c("red", "green", "blue"))

# Line Chart
plot(mtcars$wt,
     mtcars$mpg,
     type = "l",
     main = "Line Chart of Weight vs. Miles per Gallon",
     xlab = "Weight (1000 lbs)",
     ylab = "Miles per Gallon",
     col = "red")

# Pie Chart
pie(table(mtcars$cyl),
    main = "Pie Chart of Number of Cylinders",
    col = c("red", "green", "blue"))

# Box plot
boxplot(mpg ~ cyl,
        data = mtcars,
        main = "Box Plot of Miles per Gallon by Number of Cylinders",
        xlab = "Number of Cylinders",
        ylab = "Miles per Gallon",
        col = c("red", "green", "blue"))

# Scatter plot
plot(mtcars$wt,
     mtcars$mpg,
     main = "Scatter Plot of Weight vs. Miles per Gallon",
     xlab = "Weight (1000 lbs)",
     ylab = "Miles per Gallon",
     col = mtcars$cyl)
