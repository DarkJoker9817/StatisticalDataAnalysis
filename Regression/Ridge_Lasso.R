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


#### CROSS VALIDATION ####
cv.out_ridge=cv.glmnet(as.matrix(X_train), Y_train$Dehydration, alpha=0, lambda=lambda_grid)
cv.out_lasso=cv.glmnet(as.matrix(X_train), Y_train$Dehydration, alpha=1, lambda=lambda_grid)
cv.bestlambda_ridge=cv.out_ridge$lambda.min
cv.bestlambda_lasso=cv.out_lasso$lambda.min

cv.pred_ridge = predict(cv.out_ridge, s=cv.bestlambda_ridge, newx=as.matrix(X_test))
cv.pred_lasso = predict(cv.out_lasso, s=cv.bestlambda_ridge, newx=as.matrix(X_test))

cv.mse_ridge = mse_func(cv.pred_ridge, Y_test$Dehydration)
cv.mse_lasso = mse_func(cv.pred_lasso, Y_test$Dehydration)
### END CROSS ###

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


#### CROSS VALIDATION ####
cv.out_ridge=cv.glmnet(as.matrix(X_train), Y_train$Hyperthermia, alpha=0, lambda=lambda_grid)
cv.out_lasso=cv.glmnet(as.matrix(X_train), Y_train$Hyperthermia, alpha=1, lambda=lambda_grid)
cv.bestlambda_ridge=cv.out_ridge$lambda.min
cv.bestlambda_lasso=cv.out_lasso$lambda.min

cv.pred_ridge = predict(cv.out_ridge, s=cv.bestlambda_ridge, newx=as.matrix(X_test))
cv.pred_lasso = predict(cv.out_lasso, s=cv.bestlambda_ridge, newx=as.matrix(X_test))

cv.mse_ridge = mse_func(cv.pred_ridge, Y_test$Hyperthermia)
cv.mse_lasso = mse_func(cv.pred_lasso, Y_test$Hyperthermia)
# END CROSS #

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


#### CROSS VALIDATION ####
cv.out_ridge=cv.glmnet(as.matrix(X_train), Y_train$AvgSpeed, alpha=0, lambda=lambda_grid)
cv.out_lasso=cv.glmnet(as.matrix(X_train), Y_train$AvgSpeed, alpha=1, lambda=lambda_grid)
cv.bestlambda_ridge=cv.out_ridge$lambda.min
cv.bestlambda_lasso=cv.out_lasso$lambda.min

cv.pred_ridge = predict(cv.out_ridge, s=cv.bestlambda_ridge, newx=as.matrix(X_test))
cv.pred_lasso = predict(cv.out_lasso, s=cv.bestlambda_ridge, newx=as.matrix(X_test))

cv.mse_ridge = mse_func(cv.pred_ridge, Y_test$AvgSpeed)
cv.mse_lasso = mse_func(cv.pred_lasso, Y_test$AvgSpeed)
# END CROSS #

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


#### CROSS VALIDATION ####
cv.out_ridge=cv.glmnet(as.matrix(X_train), Y_train$AvgTravelledDistance, alpha=0, lambda=lambda_grid)
cv.out_lasso=cv.glmnet(as.matrix(X_train), Y_train$AvgTravelledDistance, alpha=1, lambda=lambda_grid)
cv.bestlambda_ridge=cv.out_ridge$lambda.min
cv.bestlambda_lasso=cv.out_lasso$lambda.min

cv.pred_ridge = predict(cv.out_ridge, s=cv.bestlambda_ridge, newx=as.matrix(X_test))
cv.pred_lasso = predict(cv.out_lasso, s=cv.bestlambda_ridge, newx=as.matrix(X_test))

cv.mse_ridge = mse_func(cv.pred_ridge, Y_test$AvgTravelledDistance)
cv.mse_lasso = mse_func(cv.pred_lasso, Y_test$AvgTravelledDistance)
# END CROSS #


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


#### CROSS VALIDATION ####
cv.out_ridge=cv.glmnet(as.matrix(X_train), Y_train$PressingCapability, alpha=0, lambda=lambda_grid)
cv.out_lasso=cv.glmnet(as.matrix(X_train), Y_train$PressingCapability, alpha=1, lambda=lambda_grid)
cv.bestlambda_ridge=cv.out_ridge$lambda.min
cv.bestlambda_lasso=cv.out_lasso$lambda.min

cv.pred_ridge = predict(cv.out_ridge, s=cv.bestlambda_ridge, newx=as.matrix(X_test))
cv.pred_lasso = predict(cv.out_lasso, s=cv.bestlambda_ridge, newx=as.matrix(X_test))

cv.mse_ridge = mse_func(cv.pred_ridge, Y_test$PressingCapability)
cv.mse_lasso = mse_func(cv.pred_lasso, Y_test$PressingCapability)
# END CROSS #


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


#### CROSS VALIDATION ####
cv.out_ridge=cv.glmnet(as.matrix(X_train), Y_train$PhysicalEndurance, alpha=0, lambda=lambda_grid)
cv.out_lasso=cv.glmnet(as.matrix(X_train), Y_train$PhysicalEndurance, alpha=1, lambda=lambda_grid)
cv.bestlambda_ridge=cv.out_ridge$lambda.min
cv.bestlambda_lasso=cv.out_lasso$lambda.min

cv.pred_ridge = predict(cv.out_ridge, s=cv.bestlambda_ridge, newx=as.matrix(X_test))
cv.pred_lasso = predict(cv.out_lasso, s=cv.bestlambda_ridge, newx=as.matrix(X_test))

cv.mse_ridge = mse_func(cv.pred_ridge, Y_test$PhysicalEndurance)
cv.mse_lasso = mse_func(cv.pred_lasso, Y_test$PhysicalEndurance)
# END CROSS #



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


#### CROSS VALIDATION ####
cv.out_ridge=cv.glmnet(as.matrix(X_train), Y_train$MentalConcentration, alpha=0, lambda=lambda_grid)
cv.out_lasso=cv.glmnet(as.matrix(X_train), Y_train$MentalConcentration, alpha=1, lambda=lambda_grid)
cv.bestlambda_ridge=cv.out_ridge$lambda.min
cv.bestlambda_lasso=cv.out_lasso$lambda.min

cv.pred_ridge = predict(cv.out_ridge, s=cv.bestlambda_ridge, newx=as.matrix(X_test))
cv.pred_lasso = predict(cv.out_lasso, s=cv.bestlambda_ridge, newx=as.matrix(X_test))

cv.mse_ridge = mse_func(cv.pred_ridge, Y_test$MentalConcentration)
cv.mse_lasso = mse_func(cv.pred_lasso, Y_test$MentalConcentration)
# END CROSS #


###-------------------------- Y = EmotionalMotivation --------------------------###

# Ridge fit and prediction for multiple lambda (lambda_grid)
ridge_model_grid = glmnet(X_train, Y_train$EmotionalMotivation, alpha=0, lambda=lambda_grid)
u=c()
temp1=c()
for(i in 1:length(lambda_grid)){
  temp1 = predict(ridge_model_grid, s=lambda_grid[i], newx=as.matrix(X_test))
  u[i] = c(mse_func(temp1, Y_test$EmotionalMotivation))
}
# Lasso fit and prediction for multiple lambda (lambda_grid)
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


#### CROSS VALIDATION ####
cv.out_ridge=cv.glmnet(as.matrix(X_train), Y_train$EmotionalMotivation, alpha=0, lambda=lambda_grid)
cv.out_lasso=cv.glmnet(as.matrix(X_train), Y_train$EmotionalMotivation, alpha=1, lambda=lambda_grid)
cv.bestlambda_ridge=cv.out_ridge$lambda.min
cv.bestlambda_lasso=cv.out_lasso$lambda.min

cv.pred_ridge = predict(cv.out_ridge, s=cv.bestlambda_ridge, newx=as.matrix(X_test))
cv.pred_lasso = predict(cv.out_lasso, s=cv.bestlambda_ridge, newx=as.matrix(X_test))

cv.mse_ridge = mse_func(cv.pred_ridge, Y_test$EmotionalMotivation)
cv.mse_lasso = mse_func(cv.pred_lasso, Y_test$EmotionalMotivation)
# END CROSS #