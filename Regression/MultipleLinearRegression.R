###---------- Multiple Linear Regression ----------###

## Y=Dehydration, X={all the predictors}
fit_1 = lm(linear.model1, data=train)
## Y=Hyperthermia, X={all the predictors}
fit_2 = lm(linear.model2, data=train)
## Y=AvgSpeed, X={all the predictors}
fit_3 = lm(linear.model3, data=train)
## Y=AvgTravelledDistance, X={all the predictors}
fit_4 = lm(linear.model4, data=train)
## Y=PressingCapability, X={all the predictors}
fit_5 = lm(linear.model5, data=train)
## Y=PhysicalEndurance, X={all the predictors}
fit_6 = lm(linear.model6, data=train)
## Y=MentalConcentration, X={all the predictors}
fit_7 = lm(linear.model7, data=train)
## Y=EmotionalMotivation, X={all the predictors}
fit_8 = lm(linear.model8, data=train)


### Models derived from regsubsets
fit_9 = lm(model.subset1_1, data=train)
fit_10 = lm(model.subset1_2, data=train)
fit_11 = lm(model.subset1_3, data=train)

fit_12 = lm(model.subset2_1, data=train)
fit_13 = lm(model.subset2_2, data=train)
fit_14 = lm(model.subset2_3, data=train)

fit_15 = lm(model.subset3_1, data=train)
fit_16 = lm(model.subset3_2, data=train)

fit_17 = lm(model.subset4_1, data=train)

fit_18 = lm(model.subset5_1, data=train)
fit_19 = lm(model.subset5_2, data=train)

fit_20 = lm(model.subset6_1, data=train)

fit_21 = lm(model.subset7_1, data=train)
fit_22 = lm(model.subset7_2, data=train)

fit_23 = lm(model.subset8_1, data=train)
fit_24 = lm(model.subset8_2, data=train)
fit_25 = lm(model.subset8_3, data=train)

# Simple function to calculate the MSE
mse_func = function(actual, predicted) {
  mean( (actual - predicted)^2 )
}

# Train MSE for linear models
mse_1_train = mse_func(Y_train$Dehydration, predict(fit_1, X_train))
mse_2_train = mse_func(Y_train$Hyperthermia, predict(fit_2, X_train))
mse_3_train = mse_func(Y_train$AvgSpeed, predict(fit_3, X_train))
mse_4_train = mse_func(Y_train$AvgTravelledDistance, predict(fit_4, X_train))
mse_5_train = mse_func(Y_train$PressingCapability, predict(fit_5, X_train))
mse_6_train = mse_func(Y_train$PhysicalEndurance, predict(fit_6, X_train))
mse_7_train = mse_func(Y_train$MentalConcentration, predict(fit_7, X_train))
mse_8_train = mse_func(Y_train$EmotionalMotivation, predict(fit_8, X_train))



# Train MSE for best subset selection models
mse_9_train = mse_func(Y_train$Dehydration, predict(fit_9, X_train))
mse_10_train = mse_func(Y_train$Dehydration, predict(fit_10, X_train))
mse_11_train = mse_func(Y_train$Dehydration, predict(fit_11, X_train))
mse_12_train = mse_func(Y_train$Hyperthermia, predict(fit_12, X_train))
mse_13_train = mse_func(Y_train$Hyperthermia, predict(fit_13, X_train))
mse_14_train = mse_func(Y_train$Hyperthermia, predict(fit_14, X_train))
mse_15_train = mse_func(Y_train$AvgSpeed, predict(fit_15, X_train))
mse_16_train = mse_func(Y_train$AvgSpeed, predict(fit_16, X_train))
mse_17_train = mse_func(Y_train$AvgTravelledDistance, predict(fit_17, X_train))
mse_18_train = mse_func(Y_train$PressingCapability, predict(fit_18, X_train))
mse_19_train = mse_func(Y_train$PressingCapability, predict(fit_19, X_train))
mse_20_train = mse_func(Y_train$PhysicalEndurance, predict(fit_20, X_train))
mse_21_train = mse_func(Y_train$MentalConcentration, predict(fit_21, X_train))
mse_22_train = mse_func(Y_train$MentalConcentration, predict(fit_22, X_train))
mse_23_train = mse_func(Y_train$EmotionalMotivation, predict(fit_23, X_train))
mse_24_train = mse_func(Y_train$EmotionalMotivation, predict(fit_24, X_train))
mse_25_train = mse_func(Y_train$EmotionalMotivation, predict(fit_25, X_train))

mse_tot_train = c(mse_1_train, mse_2_train, mse_3_train, mse_4_train, mse_5_train, mse_6_train, mse_7_train, mse_8_train, 
                  mse_9_train,mse_10_train,mse_11_train,mse_12_train,mse_13_train,mse_14_train,mse_15_train,mse_16_train,mse_17_train,
                  mse_18_train,mse_19_train,mse_20_train,mse_21_train,mse_22_train,mse_23_train,mse_24_train,mse_25_train)

mse_1_test = mse_func(Y_test$Dehydration, predict(fit_1, X_test))
mse_2_test = mse_func(Y_test$Hyperthermia, predict(fit_2, X_test))
mse_3_test = mse_func(Y_test$AvgSpeed, predict(fit_3, X_test))
mse_4_test = mse_func(Y_test$AvgTravelledDistance, predict(fit_4, X_test))
mse_5_test = mse_func(Y_test$PressingCapability, predict(fit_5, X_test))
mse_6_test = mse_func(Y_test$PhysicalEndurance, predict(fit_6, X_test))
mse_7_test = mse_func(Y_test$MentalConcentration, predict(fit_7, X_test))
mse_8_test = mse_func(Y_test$EmotionalMotivation, predict(fit_8, X_test))

mse_9_test = mse_func(Y_test$Dehydration, predict(fit_9, X_test))
mse_10_test = mse_func(Y_train$Dehydration, predict(fit_10, X_test))
mse_11_test = mse_func(Y_train$Dehydration, predict(fit_11, X_test))
mse_12_test = mse_func(Y_train$Hyperthermia, predict(fit_12, X_test))
mse_13_test = mse_func(Y_train$Hyperthermia, predict(fit_13, X_test))
mse_14_test = mse_func(Y_train$Hyperthermia, predict(fit_14, X_test))
mse_15_test = mse_func(Y_train$AvgSpeed, predict(fit_15, X_test))
mse_16_test = mse_func(Y_train$AvgSpeed, predict(fit_16, X_test))

mse_17_test = mse_func(Y_train$AvgTravelledDistance, predict(fit_17, X_test))
mse_18_test = mse_func(Y_train$AvgTravelledDistance, predict(fit_18, X_test))
mse_19_test = mse_func(Y_train$PressingCapability, predict(fit_19, X_test))
mse_20_test = mse_func(Y_train$PressingCapability, predict(fit_20, X_test))
mse_21_test = mse_func(Y_train$PhysicalEndurance, predict(fit_21, X_test))
mse_22_test = mse_func(Y_train$MentalConcentration, predict(fit_22, X_test))
mse_23_test = mse_func(Y_train$MentalConcentration, predict(fit_23, X_test))
mse_24_test = mse_func(Y_train$EmotionalMotivation, predict(fit_24, X_test))
mse_25_test = mse_func(Y_train$EmotionalMotivation, predict(fit_25, X_test))

mse_tot_test = c(mse_1_test, mse_2_test, mse_3_test, mse_4_test, mse_5_test, mse_6_test, mse_7_test, mse_8_test,
                 mse_9_test,mse_10_test,mse_11_test,mse_12_test,mse_13_test,mse_14_test,mse_15_test,mse_16_test,mse_17_test,
                 mse_18_test,mse_19_test,mse_20_test,mse_21_test,mse_22_test,mse_23_test,mse_24_test,mse_25_test)


# Test Prediction
y_pred_1 = predict(fit_1, X_test)
y_pred_2 = predict(fit_2, X_test)
y_pred_3 = predict(fit_3, X_test)
y_pred_4 = predict(fit_4, X_test)
y_pred_5 = predict(fit_5, X_test)
y_pred_6 = predict(fit_6, X_test)
y_pred_7 = predict(fit_7, X_test)
y_pred_8 = predict(fit_8, X_test)
y_pred_9 = predict(fit_9, X_test)
y_pred_10 = predict(fit_10, X_test)
y_pred_11 = predict(fit_11, X_test)
y_pred_12 = predict(fit_12, X_test)
y_pred_13 = predict(fit_13, X_test)
y_pred_14 = predict(fit_14, X_test)
y_pred_15 = predict(fit_15, X_test)
y_pred_16 = predict(fit_16, X_test)
y_pred_17 = predict(fit_17, X_test)
y_pred_18 = predict(fit_18, X_test)
y_pred_19 = predict(fit_19, X_test)
y_pred_20 = predict(fit_20, X_test)
y_pred_21 = predict(fit_21, X_test)
y_pred_22 = predict(fit_22, X_test)
y_pred_23 = predict(fit_23, X_test)
y_pred_24 = predict(fit_24, X_test)
y_pred_25 = predict(fit_25, X_test)


# Test MSE for linear models
mse_1_test = mse_func(Y_test$Dehydration, y_pred_1)
mse_2_test = mse_func(Y_test$Hyperthermia,y_pred_2)
mse_3_test = mse_func(Y_test$AvgSpeed, y_pred_3)
mse_4_test = mse_func(Y_test$AvgTravelledDistance, y_pred_4)
mse_5_test = mse_func(Y_test$PressingCapability, y_pred_5)
mse_6_test = mse_func(Y_test$PhysicalEndurance, y_pred_6)
mse_7_test = mse_func(Y_test$MentalConcentration, y_pred_7)
mse_8_test = mse_func(Y_test$EmotionalMotivation, y_pred_8)
# Test MSE for best subset selection models
mse_9_test = mse_func(Y_test$Dehydration, y_pred_9)
mse_10_test = mse_func(Y_test$Dehydration, y_pred_10)
mse_11_test = mse_func(Y_test$Dehydration, y_pred_11)
mse_12_test = mse_func(Y_test$Hyperthermia, y_pred_12)
mse_13_test = mse_func(Y_test$Hyperthermia, y_pred_13)
mse_14_test = mse_func(Y_test$Hyperthermia, y_pred_14)
mse_15_test = mse_func(Y_test$AvgSpeed, y_pred_15)
mse_16_test = mse_func(Y_test$AvgSpeed, y_pred_16)
mse_17_test = mse_func(Y_test$AvgTravelledDistance, y_pred_17)
mse_18_test = mse_func(Y_test$PressingCapability, y_pred_18)
mse_19_test = mse_func(Y_test$PressingCapability, y_pred_19)
mse_20_test = mse_func(Y_test$PhysicalEndurance, y_pred_20)
mse_21_test = mse_func(Y_test$MentalConcentration, y_pred_21)
mse_22_test = mse_func(Y_test$MentalConcentration, y_pred_22)
mse_23_test = mse_func(Y_test$EmotionalMotivation, y_pred_23)
mse_24_test = mse_func(Y_test$EmotionalMotivation, y_pred_24)
mse_25_test = mse_func(Y_test$EmotionalMotivation, y_pred_25)

mse_tot_test = c(mse_1_test, mse_2_test, mse_3_test, mse_4_test, mse_5_test, mse_6_test, mse_7_test, mse_8_test,
                 mse_9_test,mse_10_test,mse_11_test,mse_12_test,mse_13_test,mse_14_test,mse_15_test,mse_16_test,mse_17_test,
                 mse_18_test,mse_19_test,mse_20_test,mse_21_test,mse_22_test,mse_23_test,mse_24_test,mse_25_test)


print(y_pred_1)
print(y_pred_2)
print(y_pred_3)
print(y_pred_4)
print(y_pred_5)
print(y_pred_6)
print(y_pred_7)
print(y_pred_8)
print(y_pred_9)
print(y_pred_10)
print(y_pred_11)
print(y_pred_12)
print(y_pred_13)
print(y_pred_14)
print(y_pred_15)
print(y_pred_16)
print(y_pred_17)
print(y_pred_18)
print(y_pred_19)
print(y_pred_20)
print(y_pred_21)
print(y_pred_22)
print(y_pred_23)
print(y_pred_24)
print(y_pred_25)

