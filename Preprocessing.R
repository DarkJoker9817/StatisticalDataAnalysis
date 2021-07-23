setwd('./Desktop/Università/Statistical\ Data\ Analysis/Project')
myds = read.csv('RegressionData_SDA_AH_group3.csv') 

# Scale the dataset by subtracting the column means and dividing by the column 
# standard deviation
myds = scale(myds)

# Separate the dataset in X (containing predictors) and Y (containing response)
X = myds[, 1:10]
Y = myds[, 11:18]

# Split the two datasets in train and test
splitpoint = 30
X_train = X[1:splitpoint,]
X_test = X[(splitpoint+1):40,]
Y_train = Y[1:splitpoint,]
Y_test = Y[(splitpoint+1):40,]