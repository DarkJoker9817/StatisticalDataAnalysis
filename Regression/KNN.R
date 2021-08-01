library(caret)
library(Rfast)
####--------------------------------- KNN ---------------------------------####

# MSE function
mse_function = function(actual, predicted) {
  mean((actual-predicted)^2)
}

K = c(1:20)

###------------------------- Y = Dehydration -------------------------###

### For Loop -> best K value (min MSE)
u = c()
temp = c()
for(i in 1:20){
  temp = knnreg(X_train, Y_train$Dehydration, k=i) # KNN model fitting (iteration)
  u[i] = c(mse_function(Y_test$Dehydration, predict(temp, X_test)))
}
best_k = which.min(u)

x = 1:length(Y_test$Dehydration)
plot(x, Y_test$Dehydration, col='red', type='l') # Original
best_model = knnreg(X_train, Y_train$Dehydration, k=best_k)
y_pred = predict(best_model, X_test)
lines(x, y_pred, col='blue') # KNN
legend('topright', legend=c('Original', 'KNN'), col=c('red', 'blue'), pch=20)


# CROSS-VALIDATION
cv.knn = knn.cv(folds = NULL, nfolds = 10, stratified = FALSE, seed = TRUE, y=Y$Dehydration, x=as.matrix(X), k=K, 
       dist.type = "euclidean", type = "R", method = "average", freq.option=0,
       pred.ret = TRUE, mem.eff = FALSE)

x = 1:length(Y_test$Dehydration)
plot(x, Y_test$Dehydration, col='red', type='l') # Original
best_model = knnreg(X_train, Y_train$Dehydration, k=which.min(cv.knn$crit))
y_pred = predict(best_model, X_test)
lines(x, y_pred, col='blue') # KNN
legend('topright', legend=c('Original', 'KNN'), col=c('red', 'blue'), pch=20)


###------------------------- Y = Hyperthermia -------------------------###

### For Loop -> best K value (min MSE)
u = c()
temp = c()
for(i in 1:20){
  temp = knnreg(X_train, Y_train$Hyperthermia, k=i) # KNN model fitting (iteration)
  u[i] = c(mse_function(Y_test$Hyperthermia, predict(temp, X_test)))
}
best_k = which.min(u)

x = 1:length(Y_test$Hyperthermia)
plot(x, Y_test$Hyperthermia, col='red', type='l') # Original
best_model = knnreg(X_train, Y_train$Hyperthermia, k=best_k)
y_pred = predict(best_model, X_test)
lines(x, y_pred, col='blue') # KNN
legend('topright', legend=c('Original', 'KNN'), col=c('red', 'blue'), pch=20)

# CROSS-VALIDATION
cv.knn = knn.cv(folds = NULL, nfolds = 10, stratified = FALSE, seed = TRUE, y=Y$Hyperthermia, x=as.matrix(X), k=K, 
                dist.type = "euclidean", type = "R", method = "average", freq.option=0,
                pred.ret = TRUE, mem.eff = FALSE)

x = 1:length(Y_test$Hyperthermia)
plot(x, Y_test$Hyperthermia, col='red', type='l') # Original
best_model = knnreg(X_train, Y_train$Hyperthermia, k=which.min(cv.knn$crit))
y_pred = predict(best_model, X_test)
lines(x, y_pred, col='blue') # KNN
legend('topright', legend=c('Original', 'KNN'), col=c('red', 'blue'), pch=20)

###------------------------- Y = AvgSpeed -------------------------###

### For Loop -> best K value (min MSE)
u = c()
temp = c()
for(i in 1:20){
  temp = knnreg(X_train, Y_train$AvgSpeed, k=i) # KNN model fitting (iteration)
  u[i] = c(mse_function(Y_test$AvgSpeed, predict(temp, X_test)))
}
best_k = which.min(u)

x = 1:length(Y_test$AvgSpeed)
plot(x, Y_test$AvgSpeed, col='red', type='l') # Original
best_model = knnreg(X_train, Y_train$AvgSpeed, k=best_k)
y_pred = predict(best_model, X_test)
lines(x, y_pred, col='blue') # KNN
legend('topright', legend=c('Original', 'KNN'), col=c('red', 'blue'), pch=20)

# CROSS-VALIDATION
cv.knn = knn.cv(folds = NULL, nfolds = 10, stratified = FALSE, seed = TRUE, y=Y$AvgSpeed, x=as.matrix(X), k=K, 
                dist.type = "euclidean", type = "R", method = "average", freq.option=0,
                pred.ret = TRUE, mem.eff = FALSE)

x = 1:length(Y_test$AvgSpeed)
plot(x, Y_test$AvgSpeed, col='red', type='l') # Original
best_model = knnreg(X_train, Y_train$AvgSpeed, k=which.min(cv.knn$crit))
y_pred = predict(best_model, X_test)
lines(x, y_pred, col='blue') # KNN
legend('topright', legend=c('Original', 'KNN'), col=c('red', 'blue'), pch=20)

###------------------------- Y = AvgTravelledDistance -------------------------###

### For Loop -> best K value (min MSE)
u = c()
temp = c()
for(i in 1:20){
  temp = knnreg(X_train, Y_train$AvgTravelledDistance, k=i) # KNN model fitting (iteration)
  u[i] = c(mse_function(Y_test$AvgTravelledDistance, predict(temp, X_test)))
}
best_k = which.min(u)

x = 1:length(Y_test$AvgTravelledDistance)
plot(x, Y_test$AvgTravelledDistance, col='red', type='l') # Original
best_model = knnreg(X_train, Y_train$AvgTravelledDistance, k=best_k)
y_pred = predict(best_model, X_test)
lines(x, y_pred, col='blue') # KNN
legend('topright', legend=c('Original', 'KNN'), col=c('red', 'blue'), pch=20)

# CROSS-VALIDATION
cv.knn = knn.cv(folds = NULL, nfolds = 10, stratified = FALSE, seed = TRUE, y=Y$AvgTravelledDistance, x=as.matrix(X), k=K, 
                dist.type = "euclidean", type = "R", method = "average", freq.option=0,
                pred.ret = TRUE, mem.eff = FALSE)

x = 1:length(Y_test$AvgTravelledDistance)
plot(x, Y_test$AvgTravelledDistance, col='red', type='l') # Original
best_model = knnreg(X_train, Y_train$AvgTravelledDistance, k=which.min(cv.knn$crit))
y_pred = predict(best_model, X_test)
lines(x, y_pred, col='blue') # KNN
legend('topright', legend=c('Original', 'KNN'), col=c('red', 'blue'), pch=20)

###------------------------- Y = PressingCapability -------------------------###

### For Loop -> best K value (min MSE)
u = c()
temp = c()
for(i in 1:20){
  temp = knnreg(X_train, Y_train$PressingCapability, k=i) # KNN model fitting (iteration)
  u[i] = c(mse_function(Y_test$PressingCapability, predict(temp, X_test)))
}
best_k = which.min(u)

x = 1:length(Y_test$PressingCapability)
plot(x, Y_test$PressingCapability, col='red', type='l') # Original
best_model = knnreg(X_train, Y_train$PressingCapability, k=best_k)
y_pred = predict(best_model, X_test)
lines(x, y_pred, col='blue') # KNN
legend('topright', legend=c('Original', 'KNN'), col=c('red', 'blue'), pch=20)


# CROSS-VALIDATION
cv.knn = knn.cv(folds = NULL, nfolds = 10, stratified = FALSE, seed = TRUE, y=Y$PressingCapability, x=as.matrix(X), k=K, 
                dist.type = "euclidean", type = "R", method = "average", freq.option=0,
                pred.ret = TRUE, mem.eff = FALSE)

x = 1:length(Y_test$PressingCapability)
plot(x, Y_test$PressingCapability, col='red', type='l') # Original
best_model = knnreg(X_train, Y_train$PressingCapability, k=which.min(cv.knn$crit))
y_pred = predict(best_model, X_test)
lines(x, y_pred, col='blue') # KNN
legend('topright', legend=c('Original', 'KNN'), col=c('red', 'blue'), pch=20)

###------------------------- Y = PhysicalEndurance -------------------------###

### For Loop -> best K value (min MSE)
u = c()
temp = c()
for(i in 1:20){
  temp = knnreg(X_train, Y_train$PhysicalEndurance, k=i) # KNN model fitting (iteration)
  u[i] = c(mse_function(Y_test$PhysicalEndurance, predict(temp, X_test)))
}
best_k = which.min(u)

x = 1:length(Y_test$PhysicalEndurance)
plot(x, Y_test$PhysicalEndurance, col='red', type='l') # Original
best_model = knnreg(X_train, Y_train$PhysicalEndurance, k=best_k)
y_pred = predict(best_model, X_test)
lines(x, y_pred, col='blue') # KNN
legend('topright', legend=c('Original', 'KNN'), col=c('red', 'blue'), pch=20)


# CROSS-VALIDATION
cv.knn = knn.cv(folds = NULL, nfolds = 10, stratified = FALSE, seed = TRUE, y=Y$PhysicalEndurance, x=as.matrix(X), k=K, 
                dist.type = "euclidean", type = "R", method = "average", freq.option=0,
                pred.ret = TRUE, mem.eff = FALSE)

x = 1:length(Y_test$PhysicalEndurance)
plot(x, Y_test$PhysicalEndurance, col='red', type='l') # Original
best_model = knnreg(X_train, Y_train$PhysicalEndurance, k=which.min(cv.knn$crit))
y_pred = predict(best_model, X_test)
lines(x, y_pred, col='blue') # KNN
legend('topright', legend=c('Original', 'KNN'), col=c('red', 'blue'), pch=20)

###------------------------- Y = MentalConcentration -------------------------###

### For Loop -> best K value (min MSE)
u = c()
temp = c()
for(i in 1:20){
  temp = knnreg(X_train, Y_train$MentalConcentration, k=i) # KNN model fitting (iteration)
  u[i] = c(mse_function(Y_test$MentalConcentration, predict(temp, X_test)))
}
best_k = which.min(u)

x = 1:length(Y_test$MentalConcentration)
plot(x, Y_test$MentalConcentration, col='red', type='l') # Original
best_model = knnreg(X_train, Y_train$MentalConcentration, k=best_k)
y_pred = predict(best_model, X_test)
lines(x, y_pred, col='blue') # KNN
legend('topright', legend=c('Original', 'KNN'), col=c('red', 'blue'), pch=20)

# CROSS-VALIDATION
cv.knn = knn.cv(folds = NULL, nfolds = 10, stratified = FALSE, seed = TRUE, y=Y$MentalConcentration, x=as.matrix(X), k=K, 
                dist.type = "euclidean", type = "R", method = "average", freq.option=0,
                pred.ret = TRUE, mem.eff = FALSE)

x = 1:length(Y_test$MentalConcentration)
plot(x, Y_test$MentalConcentration, col='red', type='l') # Original
best_model = knnreg(X_train, Y_train$MentalConcentration, k=which.min(cv.knn$crit))
y_pred = predict(best_model, X_test)
lines(x, y_pred, col='blue') # KNN
legend('topright', legend=c('Original', 'KNN'), col=c('red', 'blue'), pch=20)

###------------------------- Y = EmotionalMotivation -------------------------###

### For Loop -> best K value (min MSE)
u = c()
temp = c()
for(i in 1:20){
  temp = knnreg(X_train, Y_train$EmotionalMotivation, k=i) # KNN model fitting (iteration)
  u[i] = c(mse_function(Y_test$EmotionalMotivation, predict(temp, X_test)))
}
best_k = which.min(u)

x = 1:length(Y_test$EmotionalMotivation)
plot(x, Y_test$EmotionalMotivation, col='red', type='l') # Original
best_model = knnreg(X_train, Y_train$EmotionalMotivation, k=best_k)
y_pred = predict(best_model, X_test)
lines(x, y_pred, col='blue') # KNN
legend('topright', legend=c('Original', 'KNN'), col=c('red', 'blue'), pch=20)


# CROSS-VALIDATION
cv.knn = knn.cv(folds = NULL, nfolds = 10, stratified = FALSE, seed = TRUE, y=Y$EmotionalMotivation, x=as.matrix(X), k=K, 
                dist.type = "euclidean", type = "R", method = "average", freq.option=0,
                pred.ret = TRUE, mem.eff = FALSE)

x = 1:length(Y_test$EmotionalMotivation)
plot(x, Y_test$EmotionalMotivation, col='red', type='l') # Original
best_model = knnreg(X_train, Y_train$EmotionalMotivation, k=which.min(cv.knn$crit))
y_pred = predict(best_model, X_test)
lines(x, y_pred, col='blue') # KNN
legend('topright', legend=c('Original', 'KNN'), col=c('red', 'blue'), pch=20)
