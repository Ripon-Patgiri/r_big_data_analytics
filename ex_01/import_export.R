# Read and Write CSV

data_csv <- read.csv("C:\\Users\\admin\\Desktop\\MTech CSE R\\17-March-2023-Friday\\studentinfo.csv")
data_csv

names = data.frame(
  Name = c("Ripon", "Ripon1", "Ripon2"),
  Age = c(22,15,19),
  Vote = c(TRUE, FALSE,TRUE)
)

write.csv(names,"C:\\Users\\admin\\Desktop\\MTech CSE R\\17-March-2023-Friday\\names.csv")

# Read and Write XLSX

install.packages("xlsx")
library("xlsx")

read_data <- read.xlsx("C:\\Users\\admin\\Desktop\\MTech CSE R\\17-March-2023-Friday\\studentinfo.xlsx", sheetIndex = 1)
read_data

names = data.frame(
  Name = c("Ripon", "Ripon1", "Ripon2"),
  Age = c(22,15,19),
  Vote = c(TRUE, FALSE,TRUE)
)

write.xlsx(names, "C:\\Users\\admin\\Desktop\\MTech CSE R\\17-March-2023-Friday\\names.xlsx")

# Read and Write JSON

install.packages("rjson")
library("rjson")

result <- fromJSON(file = "C:\\Users\\admin\\Desktop\\MTech CSE R\\17-March-2023-Friday\\salary.json")
result

json_data_frame <- as.data.frame(result)
json_data_frame

names = data.frame(
  Name = c("Ripon", "Ripon1", "Ripon2"),
  Age = c(22,15,19),
  Vote = c(TRUE, FALSE,TRUE)
)

myfile = toJSON(names)
write(myfile, "C:\\Users\\admin\\Desktop\\MTech CSE R\\17-March-2023-Friday\\custom.json")

# Read XML

install.packages("XML")
library("XML")
library("methods")
result <- xmlParse(file = "C:\\Users\\admin\\Desktop\\MTech CSE R\\17-March-2023-Friday\\employee.xml")
result

xmldataframe <- xmlToDataFrame(result)
xmldataframe

# Inputting through the keyboard

readData <- function () {
  df <- data.frame (Month = c (), Year = c (), Value = c ())
  while (TRUE) {
    my.year <- readline (prompt="Year: ")
    # stop reading if no year was typed in
    if (my.year == '') break
    my.month <- as.integer (readline (prompt="Month: "))
    my.val <- as.integer (readline (prompt="Value: "))
    # add the read data to the bottom of the dataframe
    df <- rbind (df, data.frame (Month = c (my.month), Year = c (my.year), Value = c (my.val)))
  }
  df
}
# now call the function, it will allow inputs until an empty year is typed
readData ()

# ------------------


# Importing a CSV file from Datablist
myurl <- "https://www.datablist.com/learn/csv/download-sample-csv-files"
mydata <- read.csv(text = getURL(myurl))

# Exporting a data frame to a CSV file
write.csv(mydata, "mydata_export.csv")

# Importing a text file from the internet
myurl <- "http://www.example.com/mydata.txt"
mydata <- read.table(text = getURL(myurl))

# Importing an Excel file
library(readxl)
mydata <- read_excel("mydata.xlsx")

# Exporting a data frame to an Excel file
library(writexl)
write_xlsx(mydata, "mydata_export.xlsx")

