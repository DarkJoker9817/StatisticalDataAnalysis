library(glmnet)
library(matlib)

####-------------------------------- SHRINKAGE --------------------------------####

mylambda=0.1
lambda_grid=10^seq(-3, 10, length=50)


mse_func=function(actual, predicted)
{
  mean( (actual-predicted)^2 )
}

###-------------------------- Y = Dehydration --------------------------###

### Ridge fit and prediction for multiple lambda (lambda_grid)
ridge_model_grid = glmnet(X_train, Y_train$Dehydration, alpha=0, lambda=lambda_grid)
u=c()
temp1=c()
for(i in 1:length(lambda_grid)){
  temp1 = predict(ridge_model_grid, s=lambda_grid[i], newx=as.matrix(X_test))
  u[i] = c(mse_func(temp1, Y_test$Dehydration))
}
### Lasso fit and prediction for multiple lambda (lambda_grid)
lasso_model_grid = glmnet(X_train, Y_train$Dehydration, alpha=1, lambda=lambda_grid)
v=c()
temp2=c()
for(i in 1:length(lambda_grid)){
  temp2 = predict(lasso_model_grid, s=lambda_grid[i], newx=as.matrix(X_test))
  v[i] = c(mse_func(temp2, Y_test$Dehydration))
}

# Compare RMSE Ridge vs. Lasso vectors
plot(u, col='red', ylab='RMSE test', main='Ridge vs. Lasso', type='b')
points(v, col='blue', type='b')
legend('topright', legend=c('Ridge', 'Lasso'), col=c('red', 'blue'), pch=20)

# Value of lambda to minimize RMSE
lambda_min_ridge = lambda_grid[which.min(u)]
lambda_min_lasso = lambda_grid[which.min(v)]



###-------------------------- Y = Hyperthermia --------------------------###

### Ridge fit and prediction for multiple lambda (lambda_grid)
ridge_model_grid = glmnet(X_train, Y_train$Hyperthermia, alpha=0, lambda=lambda_grid)
u=c()
temp1=c()
for(i in 1:length(lambda_grid)){
  temp1 = predict(ridge_model_grid, s=lambda_grid[i], newx=as.matrix(X_test))
  u[i] = c(mse_func(temp1, Y_test$Hyperthermia))
}
### Lasso fit and prediction for multiple lambda (lambda_grid)
lasso_model_grid = glmnet(X_train, Y_train$Hyperthermia, alpha=1, lambda=lambda_grid)
v=c()
temp2=c()
for(i in 1:length(lambda_grid)){
  temp2 = predict(lasso_model_grid, s=lambda_grid[i], newx=as.matrix(X_test))
  v[i] = c(mse_func(temp2, Y_test$Hyperthermia))
}

# Compare RMSE Ridge vs. Lasso vectors
plot(u, col='red', ylab='RMSE test', main='Ridge vs. Lasso', type='b')
points(v, col='blue', type='b')
legend('topright', legend=c('Ridge', 'Lasso'), col=c('red', 'blue'), pch=20)

# Value of lambda to minimize RMSE
lambda_min_ridge = lambda_grid[which.min(u)]
lambda_min_lasso = lambda_grid[which.min(v)]


###-------------------------- Y = AvgSpeed --------------------------###

### Ridge fit and prediction for multiple lambda (lambda_grid)
ridge_model_grid = glmnet(X_train, Y_train$AvgSpeed, alpha=0, lambda=lambda_grid)
u=c()
temp1=c()
for(i in 1:length(lambda_grid)){
  temp1 = predict(ridge_model_grid, s=lambda_grid[i], newx=as.matrix(X_test))
  u[i] = c(mse_func(temp1, Y_test$AvgSpeed))
}
### Lasso fit and prediction for multiple lambda (lambda_grid)
lasso_model_grid = glmnet(X_train, Y_train$AvgSpeed, alpha=1, lambda=lambda_grid)
v=c()
temp2=c()
for(i in 1:length(lambda_grid)){
  temp2 = predict(lasso_model_grid, s=lambda_grid[i], newx=as.matrix(X_test))
  v[i] = c(mse_func(temp2, Y_test$AvgSpeed))
}

# Compare RMSE Ridge vs. Lasso vectors
plot(u, col='red', ylab='RMSE test', main='Ridge vs. Lasso', type='b')
points(v, col='blue', type='b')
legend('topright', legend=c('Ridge', 'Lasso'), col=c('red', 'blue'), pch=20)

# Value of lambda to minimize RMSE
lambda_min_ridge = lambda_grid[which.min(u)]
lambda_min_lasso = lambda_grid[which.min(v)]


###-------------------------- Y = AvgTravelledDistance --------------------------###

### Ridge fit and prediction for multiple lambda (lambda_grid)
ridge_model_grid = glmnet(X_train, Y_train$AvgTravelledDistance, alpha=0, lambda=lambda_grid)
u=c()
temp1=c()
for(i in 1:length(lambda_grid)){
  temp1 = predict(ridge_model_grid, s=lambda_grid[i], newx=as.matrix(X_test))
  u[i] = c(mse_func(temp1, Y_test$AvgTravelledDistance))
}
### Lasso fit and prediction for multiple lambda (lambda_grid)
lasso_model_grid = glmnet(X_train, Y_train$AvgTravelledDistance, alpha=1, lambda=lambda_grid)
v=c()
temp2=c()
for(i in 1:length(lambda_grid)){
  temp2 = predict(lasso_model_grid, s=lambda_grid[i], newx=as.matrix(X_test))
  v[i] = c(mse_func(temp2, Y_test$AvgTravelledDistance))
}

# Compare RMSE Ridge vs. Lasso vectors
plot(u, col='red', ylab='RMSE test', main='Ridge vs. Lasso', type='b')
points(v, col='blue', type='b')
legend('topright', legend=c('Ridge', 'Lasso'), col=c('red', 'blue'), pch=20)

# Value of lambda to minimize RMSE
lambda_min_ridge = lambda_grid[which.min(u)]
lambda_min_lasso = lambda_grid[which.min(v)]


###-------------------------- Y = PressingCapability --------------------------###

### Ridge fit and prediction for multiple lambda (lambda_grid)
ridge_model_grid = glmnet(X_train, Y_train$PressingCapability, alpha=0, lambda=lambda_grid)
u=c()
temp1=c()
for(i in 1:length(lambda_grid)){
  temp1 = predict(ridge_model_grid, s=lambda_grid[i], newx=as.matrix(X_test))
  u[i] = c(mse_func(temp1, Y_test$PressingCapability))
}
### Lasso fit and prediction for multiple lambda (lambda_grid)
lasso_model_grid = glmnet(X_train, Y_train$PressingCapability, alpha=1, lambda=lambda_grid)
v=c()
temp2=c()
for(i in 1:length(lambda_grid)){
  temp2 = predict(lasso_model_grid, s=lambda_grid[i], newx=as.matrix(X_test))
  v[i] = c(mse_func(temp2, Y_test$PressingCapability))
}

# Compare RMSE Ridge vs. Lasso vectors
plot(u, col='red', ylab='RMSE test', main='Ridge vs. Lasso', type='b')
points(v, col='blue', type='b')
legend('topright', legend=c('Ridge', 'Lasso'), col=c('red', 'blue'), pch=20)

# Value of lambda to minimize RMSE
lambda_min_ridge = lambda_grid[which.min(u)]
lambda_min_lasso = lambda_grid[which.min(v)]


###-------------------------- Y = PhysicalEndurance --------------------------###

### Ridge fit and prediction for multiple lambda (lambda_grid)
ridge_model_grid = glmnet(X_train, Y_train$PhysicalEndurance, alpha=0, lambda=lambda_grid)
u=c()
temp1=c()
for(i in 1:length(lambda_grid)){
  temp1 = predict(ridge_model_grid, s=lambda_grid[i], newx=as.matrix(X_test))
  u[i] = c(mse_func(temp1, Y_test$PhysicalEndurance))
}
### Lasso fit and prediction for multiple lambda (lambda_grid)
lasso_model_grid = glmnet(X_train, Y_train$PhysicalEndurance, alpha=1, lambda=lambda_grid)
v=c()
temp2=c()
for(i in 1:length(lambda_grid)){
  temp2 = predict(lasso_model_grid, s=lambda_grid[i], newx=as.matrix(X_test))
  v[i] = c(mse_func(temp2, Y_test$PhysicalEndurance))
}

# Compare RMSE Ridge vs. Lasso vectors
plot(u, col='red', ylab='RMSE test', main='Ridge vs. Lasso', type='b')
points(v, col='blue', type='b')
legend('topright', legend=c('Ridge', 'Lasso'), col=c('red', 'blue'), pch=20)

# Value of lambda to minimize RMSE
lambda_min_ridge = lambda_grid[which.min(u)]
lambda_min_lasso = lambda_grid[which.min(v)]



###-------------------------- Y = MentalConcentration --------------------------###
### Ridge fit and prediction for multiple lambda (lambda_grid)
ridge_model_grid = glmnet(X_train, Y_train$MentalConcentration, alpha=0, lambda=lambda_grid)
u=c()
temp1=c()
for(i in 1:length(lambda_grid)){
  temp1 = predict(ridge_model_grid, s=lambda_grid[i], newx=as.matrix(X_test))
  u[i] = c(mse_func(temp1, Y_test$MentalConcentration))
}
### Lasso fit and prediction for multiple lambda (lambda_grid)
lasso_model_grid = glmnet(X_train, Y_train$MentalConcentration, alpha=1, lambda=lambda_grid)
v=c()
temp2=c()
for(i in 1:length(lambda_grid)){
  temp2 = predict(lasso_model_grid, s=lambda_grid[i], newx=as.matrix(X_test))
  v[i] = c(mse_func(temp2, Y_test$MentalConcentration))
}

# Compare RMSE Ridge vs. Lasso vectors
plot(u, col='red', ylab='RMSE test', main='Ridge vs. Lasso', type='b')
points(v, col='blue', type='b')
legend('topright', legend=c('Ridge', 'Lasso'), col=c('red', 'blue'), pch=20)

# Value of lambda to minimize RMSE
lambda_min_ridge = lambda_grid[which.min(u)]
lambda_min_lasso = lambda_grid[which.min(v)]



###-------------------------- Y = EmotionalMotivation --------------------------###

### Ridge fit and prediction for multiple lambda (lambda_grid)
ridge_model_grid = glmnet(X_train, Y_train$EmotionalMotivation, alpha=0, lambda=lambda_grid)
u=c()
temp1=c()
for(i in 1:length(lambda_grid)){
  temp1 = predict(ridge_model_grid, s=lambda_grid[i], newx=as.matrix(X_test))
  u[i] = c(mse_func(temp1, Y_test$EmotionalMotivation))
}
### Lasso fit and prediction for multiple lambda (lambda_grid)
lasso_model_grid = glmnet(X_train, Y_train$EmotionalMotivation, alpha=1, lambda=lambda_grid)
v=c()
temp2=c()
for(i in 1:length(lambda_grid)){
  temp2 = predict(lasso_model_grid, s=lambda_grid[i], newx=as.matrix(X_test))
  v[i] = c(mse_func(temp2, Y_test$EmotionalMotivation))
}

# Compare RMSE Ridge vs. Lasso vectors
plot(u, col='red', ylab='RMSE test', main='Ridge vs. Lasso', type='b')
points(v, col='blue', type='b')
legend('topright', legend=c('Ridge', 'Lasso'), col=c('red', 'blue'), pch=20)

# Value of lambda to minimize RMSE
lambda_min_ridge = lambda_grid[which.min(u)]
lambda_min_lasso = lambda_grid[which.min(v)]