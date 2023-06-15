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

