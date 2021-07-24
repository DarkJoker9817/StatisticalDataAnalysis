library(glmnet)
library(matlib)

####---------------- Shrinkage ----------------####

mylambda=0.1
lambda_grid=10^seq(-3, 10, length=50)


mse_func=function(actual, predicted)
{
  mean( (actual-predicted)^2 )
}

###---------- Y=Dehydration ----------###
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

cv.out_ridge = cv.glmnet(as.matrix(X_train), Y_train$Dehydration, alpha=0, lambda=lambda_grid)
cv.out_lasso = cv.glmnet(as.matrix(X_train), Y_train$Dehydration, alpha=1, lambda=lambda_grid)
bestlambda_ridge = cv.out_ridge$lambda.min
bestlambda_lasso = cv.out_lasso$lambda.min

# Compare RMSE Ridge vs. Lasso vectors
plot(u, col='red', ylab='RMSE test', main='Ridge vs. Lasso', type='b')
points(v, col='blue', type='b')
legend('topright', legend=c('Ridge', 'Lasso'), col=c('red', 'blue'), pch=20)

# Value of lambda to minimize RMSE
lambda_min_ridge = lambda_grid[which.min(u)]
lambda_min_lasso = lambda_grid[which.min(v)]

#Ridge fit for single lambda
ridge_model=glmnet(X_train, Y_train$Dehydration, alpha=0, lambda=0.02120951)
ridge_pred=predict(ridge_model, s=0.02120951, newx=as.matrix(X_test))
mse_ridge=mse_func(ridge_pred, Y_test$Dehydration)

#Lasso fit for single lambda
lasso_model=glmnet(X_train, Y_train$Dehydration, alpha=1, lambda=0.07196857)
lasso_pred=predict(lasso_model, s=0.07196857, newx=as.matrix(X_test))
mse_lasso=mse_func(lasso_pred, Y_test$Dehydration)

