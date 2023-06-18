#K means Clustering in R

# prepare matrix of data

library(cluster)

cells<-c(1.0,1.0,1.5,2.0,3.0,4.0,5.0,7.0,3.5,5.0,4.5,5.0,3.5,4.5)
rnames<-c("A","B","C","D","E","F","G")
cnames<-c("X","Y")
x<-matrix(cells,nrow=7,ncol=2,byrow=TRUE,dimnames=list(rnames,cnames))

# run K-Means
km<- kmeans(x,2,15)

# print components of km
print(km)
# plot clusters

plot(x,col=(km$cluster+1),main="K means Clustering",pch=20,cex=5)

# Using Iris Dataset

iris 
head(iris)
names(iris)
x = iris[,-5]
y = iris$Species
kc <- kmeans(x,3)
kc
table(y,kc$cluster)
plot(x[c("Sepal.Length", "Sepal.Width")], col=kc$cluster)
points(kc$centers[,c("Sepal.Length", "Sepal.Width")], col=1:3, pch=23, cex=3)


# ----------------

# load the mtcars dataset
data(mtcars)

# scale the data
scaled_mtcars <- scale(mtcars)

# k-Means Clustering
set.seed(123)
kmeans_result <- kmeans(scaled_mtcars, centers = 3)

# view the cluster assignments
kmeans_result$cluster

# plot the clusters
library(ggplot2)
ggplot(mtcars, aes(mpg, wt)) +
  geom_point(aes(colour = factor(kmeans_result$cluster))) +
  ggtitle("k-Means Clustering")

# Hierarchical Clustering
dist_mtcars <- dist(scaled_mtcars)
hclust_result <- hclust(dist_mtcars)

# plot the dendrogram
plot(hclust_result)

# cut the tree into 3 clusters
cutree(hclust_result, k = 3)

# ----------------------


# Load the dataset
data("iris")

# Explore the dataset
summary(iris)

# Perform k-means clustering
set.seed(123)  # For reproducibility
kmeans_result <- kmeans(iris[, -5], centers = 3)  # Clustering using the first 4 columns (features)

# Add cluster labels to the dataset
iris$cluster_kmeans <- as.factor(kmeans_result$cluster)

# Perform hierarchical clustering
hclust_result <- hclust(dist(iris[, -5]))  # Clustering using the first 4 columns (features)

# Cut the dendrogram to get a specific number of clusters
cut_tree <- cutree(hclust_result, k = 3)

# Add cluster labels to the dataset
iris$cluster_hierarchical <- as.factor(cut_tree)
# Visualize the clusters (k-means)
library(ggplot2)
ggplot(iris, aes(Petal.Length, Petal.Width, color = cluster_kmeans)) +
  geom_point() +
  labs(title = "k-Means Clustering")

# Visualize the clusters (hierarchical)
ggplot(iris, aes(Petal.Length, Petal.Width, color = cluster_hierarchical)) +
  geom_point() +
  labs(title = "Hierarchical Clustering")

# Load the dataset
data("USArrests")

# Explore the dataset
summary(USArrests)

# Perform k-means clustering
set.seed(123)  # For reproducibility
kmeans_result <- kmeans(USArrests, centers = 3)

# Add cluster labels to the dataset
USArrests$cluster_kmeans <- as.factor(kmeans_result$cluster)

# Perform hierarchical clustering
hclust_result <- hclust(dist(USArrests))

# Cut the dendrogram to get a specific number of clusters
cut_tree <- cutree(hclust_result, k = 3)

# Add cluster labels to the dataset
USArrests$cluster_hierarchical <- as.factor(cut_tree)

# Visualize the clusters (k-means)
library(ggplot2)
ggplot(USArrests, aes(UrbanPop, Murder, color = cluster_kmeans)) +
  geom_point() +
  labs(title = "k-Means Clustering")

# Visualize the clusters (hierarchical)
ggplot(USArrests, aes(UrbanPop, Murder, color = cluster_hierarchical)) +
  geom_point() +
  labs(title = "Hierarchical Clustering")

