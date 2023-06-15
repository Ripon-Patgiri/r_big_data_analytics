# corrr package in R
install.packages("corrr")
library('corrr')

# ggcorrrplot package in R
install.packages("ggcorrplot")
library(ggcorrplot)

# FactoMineR package in R
install.packages("FactoMineR")
library("FactoMineR")

# Exploring the Data
protein_data <- read.csv("C:\\Users\\patgi\\OneDrive\\Desktop\\m_tech\\2nd_semester\\big_data_analytics_lab\\exercise_7\\protein.csv")
str(protein_data)

# Check for Null Values
colSums(is.na(protein_data))

# Normalize the Data
numerical_data <- protein_data[,2:10]
head(numerical_data)
data_normalized <- scale(numerical_data)
head(data_normalized)

# Compute the correlation matrix
install.packages("stringi")
library('stringi')
corr_matrix <- cor(data_normalized)
ggcorrplot(corr_matrix)

# Applying PCA
data.pca <- princomp(corr_matrix)
summary(data.pca)
data.pca$loadings[, 1:2]

install.packages("factoextra")
library('factoextra')
# Visualization of the principal components
# Scree Plot
fviz_eig(data.pca, addlabels = TRUE)
# Biplot of the attributes
fviz_pca_var(data.pca, col.var = "black")
# contribution of each variable in a given component
fviz_cos2(data.pca, choice = "var", axes = 1:2)
# Biplot combined with cos2
fviz_pca_var(data.pca, col.var = "cos2",
             gradient.cols = c("black", "orange", "green"),
             repel = TRUE)
