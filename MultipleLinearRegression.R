###---------- Multiple Linear Regression ----------###

## Y=Dehydration, X={all the predictors}
fit_1 = lm(Y_train$Dehydration ~ ., data=X_train)
## Y=Hyperthermia, X={all the predictors}
fit_2 = lm(Y_train$Hyperthermia ~ ., data=X_train)
## Y=AvgSpeed, X={all the predictors}
fit_3 = lm(Y_train$AvgSpeed ~ ., data=X_train)
## Y=AvgTravelledDistance, X={all the predictors}
fit_4 = lm(Y_train$AvgTravelledDistance ~ ., data=X_train)
## Y=PressingCapability, X={all the predictors}
fit_5 = lm(Y_train$PressingCapability ~ ., data=X_train)
## Y=PhysicalEndurance, X={all the predictors}
fit_6 = lm(Y_train$PhysicalEndurance ~ ., data=X_train)
## Y=MentalConcentration, X={all the predictors}
fit_7 = lm(Y_train$MentalConcentration ~ ., data=X_train)
## Y=EmotionalMotivation, X={all the predictors}
fit_8 = lm(Y_train$EmotionalMotivation ~ ., data=X_train)

# Simple function to calculate the MSE
mse_func = function(actual, predicted) {
  mean( (actual - predicted)^2 )
}

mse_1_train = mse_func(Y_train$Dehydration, predict(fit_1, X_train))
mse_2_train = mse_func(Y_train$Hyperthermia, predict(fit_2, X_train))
mse_3_train = mse_func(Y_train$AvgSpeed, predict(fit_3, X_train))
mse_4_train = mse_func(Y_train$AvgTravelledDistance, predict(fit_4, X_train))
mse_5_train = mse_func(Y_train$PressingCapability, predict(fit_5, X_train))
mse_6_train = mse_func(Y_train$PhysicalEndurance, predict(fit_6, X_train))
mse_7_train = mse_func(Y_train$MentalConcentration, predict(fit_7, X_train))
mse_8_train = mse_func(Y_train$EmotionalMotivation, predict(fit_8, X_train))

mse_tot_train = c(mse_1_train, mse_2_train, mse_3_train, mse_4_train, mse_5_train, mse_6_train, mse_7_train, mse_8_train)

mse_1_test = mse_func(Y_test$Dehydration, predict(fit_1, X_test))
mse_2_test = mse_func(Y_test$Hyperthermia, predict(fit_2, X_test))
mse_3_test = mse_func(Y_test$AvgSpeed, predict(fit_3, X_test))
mse_4_test = mse_func(Y_test$AvgTravelledDistance, predict(fit_4, X_test))
mse_5_test = mse_func(Y_test$PressingCapability, predict(fit_5, X_test))
mse_6_test = mse_func(Y_test$PhysicalEndurance, predict(fit_6, X_test))
mse_7_test = mse_func(Y_test$MentalConcentration, predict(fit_7, X_test))
mse_8_test = mse_func(Y_test$EmotionalMotivation, predict(fit_8, X_test))

mse_tot_test = c(mse_1_test, mse_2_test, mse_3_test, mse_4_test, mse_5_test, mse_6_test, mse_7_test, mse_8_test)
