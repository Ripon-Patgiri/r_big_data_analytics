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

# ----------------------------

# Using built-in data set
data(mtcars)
hist(mtcars$mpg)

# Importing a CSV file from Datablist
myurl <- "https://www.datablist.com/learn/csv/download-sample-csv-files"
mydata <- read.csv(text = getURL(myurl))

# Visualizing external data
hist(mydata$column_name)


# Importing a CSV file from Datablist
myurl <- "https://www.datablist.com/learn/csv/download-sample-csv-files"
mydata <- read.csv(text = getURL(myurl))

# Histogram
hist(mydata$column_name)

# Bar chart
counts <- table(mydata$column_name)
barplot(counts)

# Box plot
boxplot(column1 ~ column2, data = mydata)

# Pie chart
slices <- c(10, 12, 4, 16, 8)
lbls <- c("US", "UK", "Australia", "Germany", "France")
pie(slices, labels = lbls)

# Scatter plot
plot(mydata$column1, mydata$column2)
